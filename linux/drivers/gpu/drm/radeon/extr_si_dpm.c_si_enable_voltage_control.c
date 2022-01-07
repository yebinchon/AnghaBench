
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int GENERAL_PWRMGT ;
 int VOLT_PWRMGT_EN ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void si_enable_voltage_control(struct radeon_device *rdev, bool enable)
{
 if (enable)
  WREG32_P(GENERAL_PWRMGT, VOLT_PWRMGT_EN, ~VOLT_PWRMGT_EN);
 else
  WREG32_P(GENERAL_PWRMGT, 0, ~VOLT_PWRMGT_EN);
}
