
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int RREG32_SMC (int ) ;
 int SCLK_DPM_EN (int) ;
 int SMU_SCLK_DPM_CNTL ;

__attribute__((used)) static bool trinity_dpm_enabled(struct radeon_device *rdev)
{
 if (RREG32_SMC(SMU_SCLK_DPM_CNTL) & SCLK_DPM_EN(1))
  return 1;
 else
  return 0;
}
