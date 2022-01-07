
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int pm_enabled; } ;


 int SMU_MSG_NumOfDisplays ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;

__attribute__((used)) static int smu_v11_0_init_display_count(struct smu_context *smu, uint32_t count)
{
 int ret = 0;

 if (!smu->pm_enabled)
  return ret;

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_NumOfDisplays, count);
 return ret;
}
