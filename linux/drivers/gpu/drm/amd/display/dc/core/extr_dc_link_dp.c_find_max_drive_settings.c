
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t lane_count; int link_spread; int link_rate; } ;
struct link_training_settings {TYPE_2__* lane_settings; TYPE_1__ link_settings; } ;
struct dc_lane_settings {scalar_t__ VOLTAGE_SWING; scalar_t__ PRE_EMPHASIS; } ;
struct TYPE_4__ {scalar_t__ VOLTAGE_SWING; scalar_t__ PRE_EMPHASIS; } ;


 scalar_t__ PRE_EMPHASIS_MAX_LEVEL ;
 scalar_t__ VOLTAGE_SWING_MAX_LEVEL ;
 scalar_t__ get_max_pre_emphasis_for_voltage_swing (scalar_t__) ;

__attribute__((used)) static void find_max_drive_settings(
 const struct link_training_settings *link_training_setting,
 struct link_training_settings *max_lt_setting)
{
 uint32_t lane;
 struct dc_lane_settings max_requested;

 max_requested.VOLTAGE_SWING =
  link_training_setting->
  lane_settings[0].VOLTAGE_SWING;
 max_requested.PRE_EMPHASIS =
  link_training_setting->
  lane_settings[0].PRE_EMPHASIS;




 for (lane = 1; lane < link_training_setting->link_settings.lane_count;
   lane++) {
  if (link_training_setting->lane_settings[lane].VOLTAGE_SWING >
   max_requested.VOLTAGE_SWING)

   max_requested.VOLTAGE_SWING =
   link_training_setting->
   lane_settings[lane].VOLTAGE_SWING;

  if (link_training_setting->lane_settings[lane].PRE_EMPHASIS >
    max_requested.PRE_EMPHASIS)
   max_requested.PRE_EMPHASIS =
   link_training_setting->
   lane_settings[lane].PRE_EMPHASIS;
 }



 if (max_requested.VOLTAGE_SWING > VOLTAGE_SWING_MAX_LEVEL)
  max_requested.VOLTAGE_SWING = VOLTAGE_SWING_MAX_LEVEL;

 if (max_requested.PRE_EMPHASIS > PRE_EMPHASIS_MAX_LEVEL)
  max_requested.PRE_EMPHASIS = PRE_EMPHASIS_MAX_LEVEL;






 if (max_requested.PRE_EMPHASIS >
  get_max_pre_emphasis_for_voltage_swing(
   max_requested.VOLTAGE_SWING))
  max_requested.PRE_EMPHASIS =
  get_max_pre_emphasis_for_voltage_swing(
   max_requested.VOLTAGE_SWING);
 max_lt_setting->link_settings.link_rate =
  link_training_setting->link_settings.link_rate;
 max_lt_setting->link_settings.lane_count =
 link_training_setting->link_settings.lane_count;
 max_lt_setting->link_settings.link_spread =
  link_training_setting->link_settings.link_spread;

 for (lane = 0; lane <
  link_training_setting->link_settings.lane_count;
  lane++) {
  max_lt_setting->lane_settings[lane].VOLTAGE_SWING =
   max_requested.VOLTAGE_SWING;
  max_lt_setting->lane_settings[lane].PRE_EMPHASIS =
   max_requested.PRE_EMPHASIS;



 }

}
