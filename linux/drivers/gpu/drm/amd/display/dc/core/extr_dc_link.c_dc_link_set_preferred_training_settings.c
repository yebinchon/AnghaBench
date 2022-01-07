
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link_training_overrides {int dummy; } ;
struct dc_link_settings {int link_rate; int lane_count; } ;
struct dc_link {struct dc_link_settings preferred_link_setting; struct dc_link_training_overrides preferred_training_settings; } ;
struct dc {int dummy; } ;


 int LANE_COUNT_UNKNOWN ;
 int LINK_RATE_UNKNOWN ;
 int dc_link_set_preferred_link_settings (struct dc*,struct dc_link_settings*,struct dc_link*) ;
 int memset (struct dc_link_training_overrides*,int ,int) ;

void dc_link_set_preferred_training_settings(struct dc *dc,
       struct dc_link_settings *link_setting,
       struct dc_link_training_overrides *lt_overrides,
       struct dc_link *link,
       bool skip_immediate_retrain)
{
 if (lt_overrides != ((void*)0))
  link->preferred_training_settings = *lt_overrides;
 else
  memset(&link->preferred_training_settings, 0, sizeof(link->preferred_training_settings));

 if (link_setting != ((void*)0)) {
  link->preferred_link_setting = *link_setting;
 } else {
  link->preferred_link_setting.lane_count = LANE_COUNT_UNKNOWN;
  link->preferred_link_setting.link_rate = LINK_RATE_UNKNOWN;
 }


 if (skip_immediate_retrain == 0)
  dc_link_set_preferred_link_settings(dc, &link->preferred_link_setting, link);
}
