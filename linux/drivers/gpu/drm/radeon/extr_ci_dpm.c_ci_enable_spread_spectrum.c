
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {scalar_t__ caps_sclk_ss_support; } ;


 int CG_SPLL_SPREAD_SPECTRUM ;
 int DYN_SPREAD_SPECTRUM_EN ;
 int GENERAL_PWRMGT ;
 int RREG32_SMC (int ) ;
 int SSEN ;
 int WREG32_SMC (int ,int ) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ci_enable_spread_spectrum(struct radeon_device *rdev, bool enable)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 u32 tmp;

 if (enable) {
  if (pi->caps_sclk_ss_support) {
   tmp = RREG32_SMC(GENERAL_PWRMGT);
   tmp |= DYN_SPREAD_SPECTRUM_EN;
   WREG32_SMC(GENERAL_PWRMGT, tmp);
  }
 } else {
  tmp = RREG32_SMC(CG_SPLL_SPREAD_SPECTRUM);
  tmp &= ~SSEN;
  WREG32_SMC(CG_SPLL_SPREAD_SPECTRUM, tmp);

  tmp = RREG32_SMC(GENERAL_PWRMGT);
  tmp &= ~DYN_SPREAD_SPECTRUM_EN;
  WREG32_SMC(GENERAL_PWRMGT, tmp);
 }
}
