
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dc_link_settings {scalar_t__ lane_count; scalar_t__ link_rate; int use_link_rate_set; size_t link_rate_set; int link_spread; } ;
struct TYPE_3__ {scalar_t__ raw; } ;
struct TYPE_4__ {scalar_t__ edp_supported_link_rates_count; scalar_t__* edp_supported_link_rates; TYPE_1__ dpcd_rev; } ;
struct dc_link {TYPE_2__ dpcd_caps; struct dc_link_settings verified_link_cap; } ;
typedef int initial_link_setting ;


 scalar_t__ DPCD_REV_14 ;
 scalar_t__ LANE_COUNT_ONE ;
 int LINK_SPREAD_DISABLED ;
 scalar_t__ dc_link_bandwidth_kbps (struct dc_link*,struct dc_link_settings*) ;
 scalar_t__ increase_lane_count (scalar_t__) ;
 int memset (struct dc_link_settings*,int ,int) ;

__attribute__((used)) static bool decide_edp_link_settings(struct dc_link *link, struct dc_link_settings *link_setting, uint32_t req_bw)
{
 struct dc_link_settings initial_link_setting;
 struct dc_link_settings current_link_setting;
 uint32_t link_bw;

 if (link->dpcd_caps.dpcd_rev.raw < DPCD_REV_14 ||
   link->dpcd_caps.edp_supported_link_rates_count == 0) {
  *link_setting = link->verified_link_cap;
  return 1;
 }

 memset(&initial_link_setting, 0, sizeof(initial_link_setting));
 initial_link_setting.lane_count = LANE_COUNT_ONE;
 initial_link_setting.link_rate = link->dpcd_caps.edp_supported_link_rates[0];
 initial_link_setting.link_spread = LINK_SPREAD_DISABLED;
 initial_link_setting.use_link_rate_set = 1;
 initial_link_setting.link_rate_set = 0;
 current_link_setting = initial_link_setting;





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
   if (current_link_setting.link_rate_set < link->dpcd_caps.edp_supported_link_rates_count) {
    current_link_setting.link_rate_set++;
    current_link_setting.link_rate =
     link->dpcd_caps.edp_supported_link_rates[current_link_setting.link_rate_set];
    current_link_setting.lane_count =
         initial_link_setting.lane_count;
   } else
    break;
  }
 }
 return 0;
}
