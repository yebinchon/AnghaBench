
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega20_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {struct vega20_hwmgr* backend; } ;
struct TYPE_2__ {scalar_t__ supported; } ;


 size_t GNLD_FAN_CONTROL ;
 int vega20_enable_fan_control_feature (struct pp_hwmgr*) ;

int vega20_fan_ctrl_start_smc_fan_control(struct pp_hwmgr *hwmgr)
{
 struct vega20_hwmgr *data = hwmgr->backend;

 if (data->smu_features[GNLD_FAN_CONTROL].supported)
  return vega20_enable_fan_control_feature(hwmgr);

 return 0;
}
