
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_training_settings {int dummy; } ;
struct dc_link {int dummy; } ;


 int dp_set_hw_lane_settings (struct dc_link*,struct link_training_settings*) ;
 int dpcd_set_lane_settings (struct dc_link*,struct link_training_settings*) ;

void dc_link_dp_set_drive_settings(
 struct dc_link *link,
 struct link_training_settings *lt_settings)
{

 dp_set_hw_lane_settings(link, lt_settings);


 dpcd_set_lane_settings(link, lt_settings);
}
