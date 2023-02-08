Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :student_lists do
    resources :students, only: %I[new create edit]
  end

  resources :chatrooms, only: :show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
