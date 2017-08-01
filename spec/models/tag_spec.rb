require 'rails_helper'

RSpec.describe Tag, type: :model do
  describe "#average_salary" do
    it "shows average salary" do
      job     = Job.create!(title: "Developer", level_of_interest: 70, city: "Denver", salary: 1500)
      job_two = Job.create!(title: "Project Manager", level_of_interest: 80, city: "Denver", salary: 2100)
      tag_one = job.tags.create(name: "New")
      tag_two = job.tags.create(name: "Old")
      job_two = job_two.tags << tag_two
      expected = Tag.average_salary(job)

      expect(expected).to eq 1800
    end
  end
end
