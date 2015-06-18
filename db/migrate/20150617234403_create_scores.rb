class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.float :level1
      t.float :level2
      t.float :level3
      t.float :total
      t.string :user
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
