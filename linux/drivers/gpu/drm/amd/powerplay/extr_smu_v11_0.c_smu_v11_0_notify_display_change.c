
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu_context {TYPE_2__* adev; int pm_enabled; } ;
struct TYPE_3__ {scalar_t__ vram_type; } ;
struct TYPE_4__ {TYPE_1__ gmc; } ;


 scalar_t__ AMDGPU_VRAM_TYPE_HBM ;
 int SMU_FEATURE_DPM_UCLK_BIT ;
 int SMU_MSG_SetUclkFastSwitch ;
 scalar_t__ smu_feature_is_enabled (struct smu_context*,int ) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int smu_v11_0_notify_display_change(struct smu_context *smu)
{
 int ret = 0;

 if (!smu->pm_enabled)
  return ret;
 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UCLK_BIT) &&
     smu->adev->gmc.vram_type == AMDGPU_VRAM_TYPE_HBM)
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetUclkFastSwitch, 1);

 return ret;
}
