
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {scalar_t__ fan_ctrl_enabled; } ;


 int AMD_FAN_CTRL_AUTO ;
 int AMD_FAN_CTRL_MANUAL ;

__attribute__((used)) static uint32_t smu7_get_fan_control_mode(struct pp_hwmgr *hwmgr)
{
 return hwmgr->fan_ctrl_enabled ? AMD_FAN_CTRL_AUTO : AMD_FAN_CTRL_MANUAL;
}
