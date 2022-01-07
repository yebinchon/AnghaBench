
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int RREG32_SMC (int ) ;
 int THERMAL_PROTECTION_DIS ;
 int WREG32_SMC (int ,int ) ;

__attribute__((used)) static void ci_enable_thermal_protection(struct radeon_device *rdev,
      bool enable)
{
 u32 tmp = RREG32_SMC(GENERAL_PWRMGT);

 if (enable)
  tmp &= ~THERMAL_PROTECTION_DIS;
 else
  tmp |= THERMAL_PROTECTION_DIS;
 WREG32_SMC(GENERAL_PWRMGT, tmp);
}
