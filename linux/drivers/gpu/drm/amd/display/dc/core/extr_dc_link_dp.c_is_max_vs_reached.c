
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {scalar_t__ lane_count; } ;
struct link_training_settings {TYPE_2__* lane_settings; TYPE_1__ link_settings; } ;
struct TYPE_4__ {scalar_t__ VOLTAGE_SWING; } ;


 scalar_t__ VOLTAGE_SWING_MAX_LEVEL ;

__attribute__((used)) static bool is_max_vs_reached(
 const struct link_training_settings *lt_settings)
{
 uint32_t lane;
 for (lane = 0; lane <
  (uint32_t)(lt_settings->link_settings.lane_count);
  lane++) {
  if (lt_settings->lane_settings[lane].VOLTAGE_SWING
   == VOLTAGE_SWING_MAX_LEVEL)
   return 1;
 }
 return 0;

}
