
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int PATTERN; int DYN_RANGE; } ;
union test_misc {TYPE_1__ bits; int raw; } ;
union link_test_pattern {TYPE_1__ bits; int raw; } ;
struct dc_link {int dummy; } ;
typedef enum dp_test_pattern { ____Placeholder_dp_test_pattern } dp_test_pattern ;
typedef int dpcd_test_pattern ;
typedef int dpcd_test_params ;


 int DP_TEST_MISC0 ;
 int DP_TEST_PATTERN ;
 int DP_TEST_PATTERN_COLOR_RAMP ;
 int DP_TEST_PATTERN_COLOR_SQUARES ;
 int DP_TEST_PATTERN_COLOR_SQUARES_CEA ;
 int DP_TEST_PATTERN_VERTICAL_BARS ;
 int DP_TEST_PATTERN_VIDEO_MODE ;



 int TEST_DYN_RANGE_VESA ;
 int core_link_read_dpcd (struct dc_link*,int ,int *,int) ;
 int dc_link_dp_set_test_pattern (struct dc_link*,int,int *,int *,int ) ;
 int memset (union test_misc*,int ,int) ;

__attribute__((used)) static void dp_test_send_link_test_pattern(struct dc_link *link)
{
 union link_test_pattern dpcd_test_pattern;
 union test_misc dpcd_test_params;
 enum dp_test_pattern test_pattern;

 memset(&dpcd_test_pattern, 0, sizeof(dpcd_test_pattern));
 memset(&dpcd_test_params, 0, sizeof(dpcd_test_params));


 core_link_read_dpcd(
   link,
   DP_TEST_PATTERN,
   &dpcd_test_pattern.raw,
   sizeof(dpcd_test_pattern));
 core_link_read_dpcd(
   link,
   DP_TEST_MISC0,
   &dpcd_test_params.raw,
   sizeof(dpcd_test_params));

 switch (dpcd_test_pattern.bits.PATTERN) {
 case 130:
  test_pattern = DP_TEST_PATTERN_COLOR_RAMP;
 break;
 case 128:
  test_pattern = DP_TEST_PATTERN_VERTICAL_BARS;
 break;
 case 129:
  test_pattern = (dpcd_test_params.bits.DYN_RANGE ==
    TEST_DYN_RANGE_VESA ?
    DP_TEST_PATTERN_COLOR_SQUARES :
    DP_TEST_PATTERN_COLOR_SQUARES_CEA);
 break;
 default:
  test_pattern = DP_TEST_PATTERN_VIDEO_MODE;
 break;
 }

 dc_link_dp_set_test_pattern(
   link,
   test_pattern,
   ((void*)0),
   ((void*)0),
   0);
}
