
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int GLOBAL_PWRMGT_EN ;
 int WREG32_P (int ,int ,int ) ;

void r600_dynamicpm_enable(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(GENERAL_PWRMGT, GLOBAL_PWRMGT_EN, ~GLOBAL_PWRMGT_EN);
 else
  WREG32_P(GENERAL_PWRMGT, 0, ~GLOBAL_PWRMGT_EN);
}
