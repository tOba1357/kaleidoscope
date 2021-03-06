class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :cors
  protect_from_forgery with: :null_session

  def cors
    headers['Access-Control-Allow-Origin'] = '*'
  end
end
