
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pp_hwmgr {int dummy; } ;


 int vega12_get_current_rpm (struct pp_hwmgr*,scalar_t__*) ;

int vega12_fan_ctrl_get_fan_speed_rpm(struct pp_hwmgr *hwmgr, uint32_t *speed)
{
 *speed = 0;

 return vega12_get_current_rpm(hwmgr, speed);
}
