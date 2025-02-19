
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mem_table; } ;
struct vega20_hwmgr {TYPE_1__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int PPSMC_MSG_NumOfDisplays ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int ) ;
 int vega20_set_fclk_to_highest_dpm_level (struct pp_hwmgr*) ;
 int vega20_set_uclk_to_highest_dpm_level (struct pp_hwmgr*,int *) ;

__attribute__((used)) static int vega20_pre_display_configuration_changed_task(struct pp_hwmgr *hwmgr)
{
 struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);
 int ret = 0;

 smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_NumOfDisplays, 0);

 ret = vega20_set_uclk_to_highest_dpm_level(hwmgr,
   &data->dpm_table.mem_table);
 if (ret)
  return ret;

 return vega20_set_fclk_to_highest_dpm_level(hwmgr);
}
