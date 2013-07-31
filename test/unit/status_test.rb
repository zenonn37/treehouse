require 'test_helper'

class StatusTest < ActiveSupport::TestCase
 test"requires content"do
 status = Status.new
 assert !status.save
 assert !status.errors[:content].empty?
   end

   test"requires content more then 2 letters"do
   status = Status.new
   status.content = "h"
   assert !status.save
   assert !status.errors[:content].empty?

end


 test"that a status has an id"do
 status = Status.new
 status.content="hello"
 assert !status.save
 assert !status.errors[:user_id].empty?
 end

end
