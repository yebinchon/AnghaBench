
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ POST_LT_ADJ_REQ_GRANTED; int ENHANCED_FRAMING; int LANE_COUNT_SET; } ;
struct TYPE_9__ {int member_0; } ;
union lane_count_set {int raw; TYPE_8__ bits; TYPE_1__ member_0; } ;
struct TYPE_11__ {int TRAINING_PATTERN_SET; } ;
struct TYPE_10__ {int member_0; } ;
union dpcd_training_pattern {TYPE_3__ v1_4; TYPE_2__ member_0; } ;
struct TYPE_15__ {int lane_count; } ;
struct link_training_settings {int enhanced_framing; TYPE_7__ link_settings; } ;
struct TYPE_12__ {int POST_LT_ADJ_REQ_SUPPORTED; } ;
struct TYPE_13__ {TYPE_4__ bits; } ;
struct TYPE_14__ {TYPE_5__ max_ln_count; } ;
struct dc_link {TYPE_6__ dpcd_caps; } ;
typedef int lane_count_set ;
typedef enum link_training_result { ____Placeholder_link_training_result } link_training_result ;


 int DPCD_TRAINING_PATTERN_VIDEOIDLE ;
 int DP_LANE_COUNT_SET ;
 int DP_TEST_PATTERN_VIDEO_MODE ;
 scalar_t__ DP_TRAINING_PATTERN_SEQUENCE_4 ;
 int LINK_TRAINING_LQA_FAIL ;
 int LINK_TRAINING_SUCCESS ;
 int core_link_write_dpcd (struct dc_link*,int ,int *,int) ;
 int dp_set_hw_test_pattern (struct dc_link*,int ,int *,int ) ;
 int dpcd_set_training_pattern (struct dc_link*,union dpcd_training_pattern) ;
 scalar_t__ get_supported_tp (struct dc_link*) ;
 int perform_post_lt_adj_req_sequence (struct dc_link*,struct link_training_settings*) ;

__attribute__((used)) static inline enum link_training_result perform_link_training_int(
 struct dc_link *link,
 struct link_training_settings *lt_settings,
 enum link_training_result status)
{
 union lane_count_set lane_count_set = { {0} };
 union dpcd_training_pattern dpcd_pattern = { {0} };


 dpcd_pattern.v1_4.TRAINING_PATTERN_SET = DPCD_TRAINING_PATTERN_VIDEOIDLE;
 dpcd_set_training_pattern(link, dpcd_pattern);


 dp_set_hw_test_pattern(link, DP_TEST_PATTERN_VIDEO_MODE, ((void*)0), 0);






 if (link->dpcd_caps.max_ln_count.bits.POST_LT_ADJ_REQ_SUPPORTED != 1 ||
   get_supported_tp(link) == DP_TRAINING_PATTERN_SEQUENCE_4)
  return status;

 if (status == LINK_TRAINING_SUCCESS &&
  perform_post_lt_adj_req_sequence(link, lt_settings) == 0)
  status = LINK_TRAINING_LQA_FAIL;

 lane_count_set.bits.LANE_COUNT_SET = lt_settings->link_settings.lane_count;
 lane_count_set.bits.ENHANCED_FRAMING = lt_settings->enhanced_framing;
 lane_count_set.bits.POST_LT_ADJ_REQ_GRANTED = 0;

 core_link_write_dpcd(
  link,
  DP_LANE_COUNT_SET,
  &lane_count_set.raw,
  sizeof(lane_count_set));

 return status;
}
