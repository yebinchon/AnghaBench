
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link {int dummy; } ;
typedef enum dp_test_pattern { ____Placeholder_dp_test_pattern } dp_test_pattern ;
typedef enum dc_dp_training_pattern { ____Placeholder_dc_dp_training_pattern } dc_dp_training_pattern ;


 int DP_TEST_PATTERN_TRAINING_PATTERN1 ;
 int DP_TEST_PATTERN_TRAINING_PATTERN2 ;
 int DP_TEST_PATTERN_TRAINING_PATTERN3 ;
 int DP_TEST_PATTERN_TRAINING_PATTERN4 ;
 int DP_TEST_PATTERN_UNSUPPORTED ;




 int dp_set_hw_test_pattern (struct dc_link*,int,int *,int ) ;

bool dp_set_hw_training_pattern(
 struct dc_link *link,
 enum dc_dp_training_pattern pattern)
{
 enum dp_test_pattern test_pattern = DP_TEST_PATTERN_UNSUPPORTED;

 switch (pattern) {
 case 131:
  test_pattern = DP_TEST_PATTERN_TRAINING_PATTERN1;
  break;
 case 130:
  test_pattern = DP_TEST_PATTERN_TRAINING_PATTERN2;
  break;
 case 129:
  test_pattern = DP_TEST_PATTERN_TRAINING_PATTERN3;
  break;
 case 128:
  test_pattern = DP_TEST_PATTERN_TRAINING_PATTERN4;
  break;
 default:
  break;
 }

 dp_set_hw_test_pattern(link, test_pattern, ((void*)0), 0);

 return 1;
}
