require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:question){ Question.create!(title: "New Question Title", body: "New Question Body", resolved: false) }
  let(:answer) { Answer.create!(question: question, body: "New Answer Body") }

  it "should respond to body" do
    expect(answer).to respond_to(:body)
  end

end
