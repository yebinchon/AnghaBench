
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int vega20_thermal_disable_alert (struct pp_hwmgr*) ;

int vega20_thermal_stop_thermal_controller(struct pp_hwmgr *hwmgr)
{
 int result = vega20_thermal_disable_alert(hwmgr);

 return result;
}
