
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega12_hwmgr {TYPE_1__* smu_features; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 size_t GNLD_DPM_UCLK ;
 int PPSMC_MSG_SetUclkFastSwitch ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int vega12_notify_smc_display_change(struct pp_hwmgr *hwmgr,
  bool has_disp)
{
 struct vega12_hwmgr *data = (struct vega12_hwmgr *)(hwmgr->backend);

 if (data->smu_features[GNLD_DPM_UCLK].enabled)
  return smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_SetUclkFastSwitch,
   has_disp ? 1 : 0);

 return 0;
}
