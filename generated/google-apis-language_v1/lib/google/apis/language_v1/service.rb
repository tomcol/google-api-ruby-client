# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module LanguageV1
      # Cloud Natural Language API
      #
      # Provides natural language understanding technologies, such as sentiment
      #  analysis, entity recognition, entity sentiment analysis, and other text
      #  annotations, to developers.
      #
      # @example
      #    require 'google/apis/language_v1'
      #
      #    Language = Google::Apis::LanguageV1 # Alias the module
      #    service = Language::CloudNaturalLanguageService.new
      #
      # @see https://cloud.google.com/natural-language/
      class CloudNaturalLanguageService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://language.googleapis.com/', '',
                client_name: 'google-apis-language_v1',
                client_version: Google::Apis::LanguageV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Finds named entities (currently proper names and common nouns) in the text
        # along with entity types, salience, mentions for each entity, and other
        # properties.
        # @param [Google::Apis::LanguageV1::AnalyzeEntitiesRequest] analyze_entities_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LanguageV1::AnalyzeEntitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LanguageV1::AnalyzeEntitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_document_entities(analyze_entities_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/documents:analyzeEntities', options)
          command.request_representation = Google::Apis::LanguageV1::AnalyzeEntitiesRequest::Representation
          command.request_object = analyze_entities_request_object
          command.response_representation = Google::Apis::LanguageV1::AnalyzeEntitiesResponse::Representation
          command.response_class = Google::Apis::LanguageV1::AnalyzeEntitiesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finds entities, similar to AnalyzeEntities in the text and analyzes sentiment
        # associated with each entity and its mentions.
        # @param [Google::Apis::LanguageV1::AnalyzeEntitySentimentRequest] analyze_entity_sentiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LanguageV1::AnalyzeEntitySentimentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LanguageV1::AnalyzeEntitySentimentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_document_entity_sentiment(analyze_entity_sentiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/documents:analyzeEntitySentiment', options)
          command.request_representation = Google::Apis::LanguageV1::AnalyzeEntitySentimentRequest::Representation
          command.request_object = analyze_entity_sentiment_request_object
          command.response_representation = Google::Apis::LanguageV1::AnalyzeEntitySentimentResponse::Representation
          command.response_class = Google::Apis::LanguageV1::AnalyzeEntitySentimentResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes the sentiment of the provided text.
        # @param [Google::Apis::LanguageV1::AnalyzeSentimentRequest] analyze_sentiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LanguageV1::AnalyzeSentimentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LanguageV1::AnalyzeSentimentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_document_sentiment(analyze_sentiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/documents:analyzeSentiment', options)
          command.request_representation = Google::Apis::LanguageV1::AnalyzeSentimentRequest::Representation
          command.request_object = analyze_sentiment_request_object
          command.response_representation = Google::Apis::LanguageV1::AnalyzeSentimentResponse::Representation
          command.response_class = Google::Apis::LanguageV1::AnalyzeSentimentResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes the syntax of the text and provides sentence boundaries and
        # tokenization along with part of speech tags, dependency trees, and other
        # properties.
        # @param [Google::Apis::LanguageV1::AnalyzeSyntaxRequest] analyze_syntax_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LanguageV1::AnalyzeSyntaxResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LanguageV1::AnalyzeSyntaxResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_document_syntax(analyze_syntax_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/documents:analyzeSyntax', options)
          command.request_representation = Google::Apis::LanguageV1::AnalyzeSyntaxRequest::Representation
          command.request_object = analyze_syntax_request_object
          command.response_representation = Google::Apis::LanguageV1::AnalyzeSyntaxResponse::Representation
          command.response_class = Google::Apis::LanguageV1::AnalyzeSyntaxResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # A convenience method that provides all the features that analyzeSentiment,
        # analyzeEntities, and analyzeSyntax provide in one call.
        # @param [Google::Apis::LanguageV1::AnnotateTextRequest] annotate_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LanguageV1::AnnotateTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LanguageV1::AnnotateTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def annotate_document_text(annotate_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/documents:annotateText', options)
          command.request_representation = Google::Apis::LanguageV1::AnnotateTextRequest::Representation
          command.request_object = annotate_text_request_object
          command.response_representation = Google::Apis::LanguageV1::AnnotateTextResponse::Representation
          command.response_class = Google::Apis::LanguageV1::AnnotateTextResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Classifies a document into categories.
        # @param [Google::Apis::LanguageV1::ClassifyTextRequest] classify_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LanguageV1::ClassifyTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LanguageV1::ClassifyTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def classify_document_text(classify_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/documents:classifyText', options)
          command.request_representation = Google::Apis::LanguageV1::ClassifyTextRequest::Representation
          command.request_object = classify_text_request_object
          command.response_representation = Google::Apis::LanguageV1::ClassifyTextResponse::Representation
          command.response_class = Google::Apis::LanguageV1::ClassifyTextResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moderates a document for harmful and sensitive categories.
        # @param [Google::Apis::LanguageV1::ModerateTextRequest] moderate_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LanguageV1::ModerateTextResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LanguageV1::ModerateTextResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def moderate_document_text(moderate_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/documents:moderateText', options)
          command.request_representation = Google::Apis::LanguageV1::ModerateTextRequest::Representation
          command.request_object = moderate_text_request_object
          command.response_representation = Google::Apis::LanguageV1::ModerateTextResponse::Representation
          command.response_class = Google::Apis::LanguageV1::ModerateTextResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
