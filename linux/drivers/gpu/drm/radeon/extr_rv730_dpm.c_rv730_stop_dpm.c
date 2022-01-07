
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;


 int DRM_DEBUG (char*) ;
 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int MPLL_PWRMGT_OFF ;
 int PPSMC_MSG_TwoLevelsDisabled ;
 scalar_t__ PPSMC_Result_OK ;
 int SCLK_PWRMGT_CNTL ;
 int SCLK_PWRMGT_OFF ;
 int TCI_MCLK_PWRMGT_CNTL ;
 int WREG32_P (int ,int ,int ) ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;

void rv730_stop_dpm(struct radeon_device *rdev)
{
 PPSMC_Result result;

 result = rv770_send_msg_to_smc(rdev, PPSMC_MSG_TwoLevelsDisabled);

 if (result != PPSMC_Result_OK)
  DRM_DEBUG("Could not force DPM to low\n");

 WREG32_P(GENERAL_PWRMGT, 0, ~GLOBAL_PWRMGT_EN);

 WREG32_P(SCLK_PWRMGT_CNTL, SCLK_PWRMGT_OFF, ~SCLK_PWRMGT_OFF);

 WREG32_P(TCI_MCLK_PWRMGT_CNTL, MPLL_PWRMGT_OFF, ~MPLL_PWRMGT_OFF);
}
