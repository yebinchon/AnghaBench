
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int RREG32_SMC (int ) ;
 int STATIC_PM_EN ;
 int WREG32_SMC (int ,int ) ;

__attribute__((used)) static void ci_enable_acpi_power_management(struct radeon_device *rdev)
{
 u32 tmp = RREG32_SMC(GENERAL_PWRMGT);

 tmp |= STATIC_PM_EN;

 WREG32_SMC(GENERAL_PWRMGT, tmp);
}
