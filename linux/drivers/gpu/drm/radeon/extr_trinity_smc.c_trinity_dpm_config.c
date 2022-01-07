
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int PPSMC_MSG_DPM_Config ;
 int SMU_SCRATCH0 ;
 int WREG32_SMC (int ,int) ;
 int trinity_notify_message_to_smu (struct radeon_device*,int ) ;

int trinity_dpm_config(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_SMC(SMU_SCRATCH0, 1);
 else
  WREG32_SMC(SMU_SCRATCH0, 0);

 return trinity_notify_message_to_smu(rdev, PPSMC_MSG_DPM_Config);
}
