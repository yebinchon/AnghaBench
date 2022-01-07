
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int PPSMC_MSG_DPM_N_LevelsDisabled ;
 int SMU_SCRATCH0 ;
 int WREG32_SMC (int ,int ) ;
 int trinity_notify_message_to_smu (struct radeon_device*,int ) ;

int trinity_dpm_n_levels_disabled(struct radeon_device *rdev, u32 n)
{
 WREG32_SMC(SMU_SCRATCH0, n);

 return trinity_notify_message_to_smu(rdev, PPSMC_MSG_DPM_N_LevelsDisabled);
}
