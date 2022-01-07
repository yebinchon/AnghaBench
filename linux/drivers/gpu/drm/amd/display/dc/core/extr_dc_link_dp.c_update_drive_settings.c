
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {size_t lane_count; } ;
struct link_training_settings {int * post_cursor2; TYPE_2__* lane_settings; int * pre_emphasis; int * voltage_swing; TYPE_1__ link_settings; } ;
struct TYPE_4__ {int POST_CURSOR2; int PRE_EMPHASIS; int VOLTAGE_SWING; } ;



__attribute__((used)) static void update_drive_settings(
  struct link_training_settings *dest,
  struct link_training_settings src)
{
 uint32_t lane;
 for (lane = 0; lane < src.link_settings.lane_count; lane++) {
  if (dest->voltage_swing == ((void*)0))
   dest->lane_settings[lane].VOLTAGE_SWING = src.lane_settings[lane].VOLTAGE_SWING;
  else
   dest->lane_settings[lane].VOLTAGE_SWING = *dest->voltage_swing;

  if (dest->pre_emphasis == ((void*)0))
   dest->lane_settings[lane].PRE_EMPHASIS = src.lane_settings[lane].PRE_EMPHASIS;
  else
   dest->lane_settings[lane].PRE_EMPHASIS = *dest->pre_emphasis;

  if (dest->post_cursor2 == ((void*)0))
   dest->lane_settings[lane].POST_CURSOR2 = src.lane_settings[lane].POST_CURSOR2;
  else
   dest->lane_settings[lane].POST_CURSOR2 = *dest->post_cursor2;
 }
}
