
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct TYPE_2__ {void* mpll_ss2; void* mpll_ss1; void* mpll_func_cntl_2; void* mpll_func_cntl_1; void* mpll_func_cntl; void* mpll_dq_func_cntl; void* mpll_ad_func_cntl; void* mclk_pwrmgt_cntl; void* dll_cntl; void* cg_spll_spread_spectrum_2; void* cg_spll_spread_spectrum; void* cg_spll_func_cntl_4; void* cg_spll_func_cntl_3; void* cg_spll_func_cntl_2; void* cg_spll_func_cntl; } ;
struct ci_power_info {TYPE_1__ clock_registers; } ;


 int CG_SPLL_FUNC_CNTL ;
 int CG_SPLL_FUNC_CNTL_2 ;
 int CG_SPLL_FUNC_CNTL_3 ;
 int CG_SPLL_FUNC_CNTL_4 ;
 int CG_SPLL_SPREAD_SPECTRUM ;
 int CG_SPLL_SPREAD_SPECTRUM_2 ;
 int DLL_CNTL ;
 int MCLK_PWRMGT_CNTL ;
 int MPLL_AD_FUNC_CNTL ;
 int MPLL_DQ_FUNC_CNTL ;
 int MPLL_FUNC_CNTL ;
 int MPLL_FUNC_CNTL_1 ;
 int MPLL_FUNC_CNTL_2 ;
 int MPLL_SS1 ;
 int MPLL_SS2 ;
 void* RREG32 (int ) ;
 void* RREG32_SMC (int ) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;

__attribute__((used)) static void ci_read_clock_registers(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);

 pi->clock_registers.cg_spll_func_cntl =
  RREG32_SMC(CG_SPLL_FUNC_CNTL);
 pi->clock_registers.cg_spll_func_cntl_2 =
  RREG32_SMC(CG_SPLL_FUNC_CNTL_2);
 pi->clock_registers.cg_spll_func_cntl_3 =
  RREG32_SMC(CG_SPLL_FUNC_CNTL_3);
 pi->clock_registers.cg_spll_func_cntl_4 =
  RREG32_SMC(CG_SPLL_FUNC_CNTL_4);
 pi->clock_registers.cg_spll_spread_spectrum =
  RREG32_SMC(CG_SPLL_SPREAD_SPECTRUM);
 pi->clock_registers.cg_spll_spread_spectrum_2 =
  RREG32_SMC(CG_SPLL_SPREAD_SPECTRUM_2);
 pi->clock_registers.dll_cntl = RREG32(DLL_CNTL);
 pi->clock_registers.mclk_pwrmgt_cntl = RREG32(MCLK_PWRMGT_CNTL);
 pi->clock_registers.mpll_ad_func_cntl = RREG32(MPLL_AD_FUNC_CNTL);
 pi->clock_registers.mpll_dq_func_cntl = RREG32(MPLL_DQ_FUNC_CNTL);
 pi->clock_registers.mpll_func_cntl = RREG32(MPLL_FUNC_CNTL);
 pi->clock_registers.mpll_func_cntl_1 = RREG32(MPLL_FUNC_CNTL_1);
 pi->clock_registers.mpll_func_cntl_2 = RREG32(MPLL_FUNC_CNTL_2);
 pi->clock_registers.mpll_ss1 = RREG32(MPLL_SS1);
 pi->clock_registers.mpll_ss2 = RREG32(MPLL_SS2);
}
