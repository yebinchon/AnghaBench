
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_context {TYPE_1__* adev; } ;
struct TYPE_2__ {int flags; } ;


 int AMD_IS_APU ;
 int SMU_MSG_PowerDownSdma ;
 int SMU_MSG_PowerUpSdma ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int smu_v12_0_powergate_sdma(struct smu_context *smu, bool gate)
{
 if (!(smu->adev->flags & AMD_IS_APU))
  return 0;

 if (gate)
  return smu_send_smc_msg(smu, SMU_MSG_PowerDownSdma);
 else
  return smu_send_smc_msg(smu, SMU_MSG_PowerUpSdma);
}
