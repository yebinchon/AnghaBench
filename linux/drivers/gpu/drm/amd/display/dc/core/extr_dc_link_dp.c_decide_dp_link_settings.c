
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dc_link_settings {int member_3; scalar_t__ link_rate; scalar_t__ lane_count; int member_4; int member_2; int member_1; int member_0; } ;
struct TYPE_2__ {scalar_t__ link_rate; scalar_t__ lane_count; } ;
struct dc_link {TYPE_1__ verified_link_cap; } ;


 int LANE_COUNT_ONE ;
 int LINK_RATE_LOW ;
 int LINK_SPREAD_DISABLED ;
 scalar_t__ dc_link_bandwidth_kbps (struct dc_link*,struct dc_link_settings*) ;
 scalar_t__ increase_lane_count (scalar_t__) ;
 scalar_t__ increase_link_rate (scalar_t__) ;

__attribute__((used)) static bool decide_dp_link_settings(struct dc_link *link, struct dc_link_settings *link_setting, uint32_t req_bw)
{
 struct dc_link_settings initial_link_setting = {
  LANE_COUNT_ONE, LINK_RATE_LOW, LINK_SPREAD_DISABLED, 0, 0};
 struct dc_link_settings current_link_setting =
   initial_link_setting;
 uint32_t link_bw;





 while (current_link_setting.link_rate <=
   link->verified_link_cap.link_rate) {
  link_bw = dc_link_bandwidth_kbps(
    link,
    &current_link_setting);
  if (req_bw <= link_bw) {
   *link_setting = current_link_setting;
   return 1;
  }

  if (current_link_setting.lane_count <
    link->verified_link_cap.lane_count) {
   current_link_setting.lane_count =
     increase_lane_count(
       current_link_setting.lane_count);
  } else {
   current_link_setting.link_rate =
     increase_link_rate(
       current_link_setting.link_rate);
   current_link_setting.lane_count =
     initial_link_setting.lane_count;
  }
 }

 return 0;
}
