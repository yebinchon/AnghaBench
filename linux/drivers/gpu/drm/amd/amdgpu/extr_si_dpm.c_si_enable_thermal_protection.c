
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int THERMAL_PROTECTION_DIS ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void si_enable_thermal_protection(struct amdgpu_device *adev,
       bool enable)
{
 if (enable)
  WREG32_P(GENERAL_PWRMGT, 0, ~THERMAL_PROTECTION_DIS);
 else
  WREG32_P(GENERAL_PWRMGT, THERMAL_PROTECTION_DIS, ~THERMAL_PROTECTION_DIS);
}
