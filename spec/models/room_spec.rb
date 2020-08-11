require 'rails_helper'

RSpec.describe Room, type: :model do
  describe '#create' do
    before do
      @room = FactoryBot.build(:room)
    end

    it "nameの値が存在すれば登録できること" do
      expect(@name).to be_valid
    end
    it "nameが空では登録できないこと" do
      @name = nil
      @name.valid?
      expect(@user.errors.full_messages).to include("Name can't be blank")
    end
  end
end
