
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int DYN_SPREAD_SPECTRUM_EN ;
 int GENERAL_PWRMGT ;
 int WREG32_P (int ,int ,int ) ;

__attribute__((used)) static void rv6xx_enable_dynamic_spread_spectrum(struct radeon_device *rdev,
       bool enable)
{
 if (enable)
  WREG32_P(GENERAL_PWRMGT, DYN_SPREAD_SPECTRUM_EN, ~DYN_SPREAD_SPECTRUM_EN);
 else
  WREG32_P(GENERAL_PWRMGT, 0, ~DYN_SPREAD_SPECTRUM_EN);
}
