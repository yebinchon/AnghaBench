
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int STATIC_PM_EN ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void si_enable_acpi_power_management(struct amdgpu_device *adev)
{
 WREG32_P(GENERAL_PWRMGT, STATIC_PM_EN, ~STATIC_PM_EN);
}
