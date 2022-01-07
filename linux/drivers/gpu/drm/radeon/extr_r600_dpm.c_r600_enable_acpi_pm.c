
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int STATIC_PM_EN ;
 int WREG32_P (int ,int ,int ) ;

void r600_enable_acpi_pm(struct radeon_device *rdev)
{
 WREG32_P(GENERAL_PWRMGT, STATIC_PM_EN, ~STATIC_PM_EN);
}
