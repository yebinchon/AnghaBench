
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int MCLK_PWRMGT_CNTL ;
 int MPLL_PWRMGT_OFF ;
 int WREG32_P (int ,int ,int ) ;

void r600_enable_mclk_control(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(MCLK_PWRMGT_CNTL, 0, ~MPLL_PWRMGT_OFF);
 else
  WREG32_P(MCLK_PWRMGT_CNTL, MPLL_PWRMGT_OFF, ~MPLL_PWRMGT_OFF);
}
