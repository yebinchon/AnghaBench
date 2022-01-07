
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int SCLK_PWRMGT_CNTL ;
 int SCLK_PWRMGT_OFF ;
 int WREG32_P (int ,int ,int ) ;

void r600_enable_sclk_control(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(SCLK_PWRMGT_CNTL, 0, ~SCLK_PWRMGT_OFF);
 else
  WREG32_P(SCLK_PWRMGT_CNTL, SCLK_PWRMGT_OFF, ~SCLK_PWRMGT_OFF);
}
