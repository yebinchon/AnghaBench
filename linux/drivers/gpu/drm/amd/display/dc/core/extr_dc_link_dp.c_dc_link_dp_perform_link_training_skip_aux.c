
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_training_settings {int pattern_for_eq; int eq_pattern_time; int cr_pattern_time; } ;
struct dc_link_settings {int dummy; } ;
struct dc_link {int preferred_training_settings; } ;
typedef enum dc_dp_training_pattern { ____Placeholder_dc_dp_training_pattern } dc_dp_training_pattern ;


 int DP_TEST_PATTERN_VIDEO_MODE ;
 int DP_TRAINING_PATTERN_SEQUENCE_1 ;
 int LINK_TRAINING_SUCCESS ;
 int dp_set_hw_lane_settings (struct dc_link*,struct link_training_settings*) ;
 int dp_set_hw_test_pattern (struct dc_link*,int ,int *,int ) ;
 int dp_set_hw_training_pattern (struct dc_link*,int) ;
 int initialize_training_settings (struct dc_link*,struct dc_link_settings const*,int *,struct link_training_settings*) ;
 int print_status_message (struct dc_link*,struct link_training_settings*,int ) ;
 int wait_for_training_aux_rd_interval (struct dc_link*,int ) ;

bool dc_link_dp_perform_link_training_skip_aux(
 struct dc_link *link,
 const struct dc_link_settings *link_setting)
{
 struct link_training_settings lt_settings;
 enum dc_dp_training_pattern pattern_for_cr = DP_TRAINING_PATTERN_SEQUENCE_1;

 initialize_training_settings(
   link,
   link_setting,
   &link->preferred_training_settings,
   &lt_settings);




 dp_set_hw_training_pattern(link, pattern_for_cr);


 dp_set_hw_lane_settings(link, &lt_settings);


 wait_for_training_aux_rd_interval(link, lt_settings.cr_pattern_time);




 dp_set_hw_training_pattern(link, lt_settings.pattern_for_eq);


 dp_set_hw_lane_settings(link, &lt_settings);


 wait_for_training_aux_rd_interval(link, lt_settings.eq_pattern_time);




 dp_set_hw_test_pattern(link, DP_TEST_PATTERN_VIDEO_MODE, ((void*)0), 0);

 print_status_message(link, &lt_settings, LINK_TRAINING_SUCCESS);

 return 1;
}
