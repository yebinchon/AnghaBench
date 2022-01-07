
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {scalar_t__ sclk_ss; } ;
struct radeon_device {int dummy; } ;


 int CG_SPLL_SPREAD_SPECTRUM ;
 int DYN_SPREAD_SPECTRUM_EN ;
 int GENERAL_PWRMGT ;
 int SSEN ;
 int WREG32_P (int ,int ,int ) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;

__attribute__((used)) static void si_enable_spread_spectrum(struct radeon_device *rdev, bool enable)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);

 if (enable) {
  if (pi->sclk_ss)
   WREG32_P(GENERAL_PWRMGT, DYN_SPREAD_SPECTRUM_EN, ~DYN_SPREAD_SPECTRUM_EN);
 } else {
  WREG32_P(CG_SPLL_SPREAD_SPECTRUM, 0, ~SSEN);
  WREG32_P(GENERAL_PWRMGT, 0, ~DYN_SPREAD_SPECTRUM_EN);
 }
}
