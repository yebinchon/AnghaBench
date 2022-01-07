
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vega10_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
struct TYPE_2__ {int enabled; } ;


 int AMD_FAN_CTRL_AUTO ;
 int AMD_FAN_CTRL_MANUAL ;
 size_t GNLD_FAN_CONTROL ;

__attribute__((used)) static uint32_t vega10_get_fan_control_mode(struct pp_hwmgr *hwmgr)
{
 struct vega10_hwmgr *data = hwmgr->backend;

 if (data->smu_features[GNLD_FAN_CONTROL].enabled == 0)
  return AMD_FAN_CTRL_MANUAL;
 else
  return AMD_FAN_CTRL_AUTO;
}
