
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_link_settings {void* link_rate; void* lane_count; } ;
typedef enum link_training_result { ____Placeholder_link_training_result } link_training_result ;


 void* LANE_COUNT_ONE ;
 void* LANE_COUNT_TWO ;






 int reached_minimum_lane_count (void*) ;
 int reached_minimum_link_rate (void*) ;
 void* reduce_lane_count (void*) ;
 void* reduce_link_rate (void*) ;

__attribute__((used)) static bool decide_fallback_link_setting(
  struct dc_link_settings initial_link_settings,
  struct dc_link_settings *current_link_setting,
  enum link_training_result training_result)
{
 if (!current_link_setting)
  return 0;

 switch (training_result) {
 case 133:
 case 132:
 case 131:
 case 128:
 {
  if (!reached_minimum_link_rate
    (current_link_setting->link_rate)) {
   current_link_setting->link_rate =
    reduce_link_rate(
     current_link_setting->link_rate);
  } else if (!reached_minimum_lane_count
    (current_link_setting->lane_count)) {
   current_link_setting->link_rate =
    initial_link_settings.link_rate;
   if (training_result == 133)
    return 0;
   else if (training_result == 132)
    current_link_setting->lane_count =
      LANE_COUNT_ONE;
   else if (training_result ==
     131)
    current_link_setting->lane_count =
      LANE_COUNT_TWO;
   else
    current_link_setting->lane_count =
     reduce_lane_count(
     current_link_setting->lane_count);
  } else {
   return 0;
  }
  break;
 }
 case 129:
 {
  if (!reached_minimum_lane_count
    (current_link_setting->lane_count)) {
   current_link_setting->lane_count =
    reduce_lane_count(
     current_link_setting->lane_count);
  } else if (!reached_minimum_link_rate
    (current_link_setting->link_rate)) {
   current_link_setting->link_rate =
    reduce_link_rate(
     current_link_setting->link_rate);
  } else {
   return 0;
  }
  break;
 }
 case 130:
 {
  if (!reached_minimum_link_rate
    (current_link_setting->link_rate)) {
   current_link_setting->link_rate =
    reduce_link_rate(
     current_link_setting->link_rate);
  } else {
   return 0;
  }
  break;
 }
 default:
  return 0;
 }
 return 1;
}
