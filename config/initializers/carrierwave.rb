if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      provider: 'AWS',
      aws_access_key_id: ENV['AKIAI367JHRCZ2XUVTDA'],
      aws_secret_access_key: ENV['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'],
      region: ENV['S3_REGION']
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end