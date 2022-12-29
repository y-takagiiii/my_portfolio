# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#  video_id   :integer          default(0), not null
#
# Indexes
#
#  index_posts_on_user_id   (user_id)
#  index_posts_on_video_id  (video_id)
#
# Foreign Keys
#
#  user_id   (user_id => users.id)
#  video_id  (video_id => videos.id)
#
FactoryBot.define do
  factory :post do
    association :user
    association :video
  end
end
