
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int THERMAL_PROTECTION_DIS ;
 int WREG32_P (int ,int ,int ) ;

void rv770_enable_thermal_protection(struct radeon_device *rdev,
         bool enable)
{
 if (enable)
  WREG32_P(GENERAL_PWRMGT, 0, ~THERMAL_PROTECTION_DIS);
 else
  WREG32_P(GENERAL_PWRMGT, THERMAL_PROTECTION_DIS, ~THERMAL_PROTECTION_DIS);
}
