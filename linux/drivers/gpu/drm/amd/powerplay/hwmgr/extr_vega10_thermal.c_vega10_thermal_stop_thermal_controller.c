
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bNoFan; } ;
struct TYPE_4__ {TYPE_1__ fanInfo; } ;
struct pp_hwmgr {TYPE_2__ thermal_controller; } ;


 int vega10_fan_ctrl_set_default_mode (struct pp_hwmgr*) ;
 int vega10_thermal_disable_alert (struct pp_hwmgr*) ;

int vega10_thermal_stop_thermal_controller(struct pp_hwmgr *hwmgr)
{
 int result = vega10_thermal_disable_alert(hwmgr);

 if (!hwmgr->thermal_controller.fanInfo.bNoFan)
  vega10_fan_ctrl_set_default_mode(hwmgr);

 return result;
}
