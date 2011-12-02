class Message < ActiveRecord::Base
  validate :contact_info
end

def contact_info
  unless gsm or email
    errors.add_to_base "Must have at least one form of contact info"
  end
end
