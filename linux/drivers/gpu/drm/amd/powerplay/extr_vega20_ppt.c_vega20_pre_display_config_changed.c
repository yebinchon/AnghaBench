
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vega20_dpm_table {int mem_table; } ;
struct TYPE_2__ {struct vega20_dpm_table* dpm_context; } ;
struct smu_context {TYPE_1__ smu_dpm; } ;


 int EINVAL ;
 int SMU_MSG_NumOfDisplays ;
 int pr_err (char*) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;
 int vega20_set_uclk_to_highest_dpm_level (struct smu_context*,int *) ;

__attribute__((used)) static int vega20_pre_display_config_changed(struct smu_context *smu)
{
 int ret = 0;
 struct vega20_dpm_table *dpm_table = smu->smu_dpm.dpm_context;

 if (!smu->smu_dpm.dpm_context)
  return -EINVAL;

 smu_send_smc_msg_with_param(smu, SMU_MSG_NumOfDisplays, 0);
 ret = vega20_set_uclk_to_highest_dpm_level(smu,
         &dpm_table->mem_table);
 if (ret)
  pr_err("Failed to set uclk to highest dpm level");
 return ret;
}
