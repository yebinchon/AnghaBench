
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dp_test_pattern { ____Placeholder_dp_test_pattern } dp_test_pattern ;


 int DP_TEST_PATTERN_PHY_PATTERN_BEGIN ;
 int DP_TEST_PATTERN_PHY_PATTERN_END ;
 int DP_TEST_PATTERN_VIDEO_MODE ;

__attribute__((used)) static bool is_dp_phy_pattern(enum dp_test_pattern test_pattern)
{
 if ((DP_TEST_PATTERN_PHY_PATTERN_BEGIN <= test_pattern &&
   test_pattern <= DP_TEST_PATTERN_PHY_PATTERN_END) ||
   test_pattern == DP_TEST_PATTERN_VIDEO_MODE)
  return 1;
 else
  return 0;
}
