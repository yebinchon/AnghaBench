
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int dll_cntl; int mclk_pwrmgt_cntl; int mpll_ad_func_cntl; int mpll_dq_func_cntl; int mpll_func_cntl; int mpll_func_cntl_1; int mpll_func_cntl_2; int mpll_ss1; int mpll_ss2; } ;
struct si_power_info {TYPE_1__ clock_registers; } ;
struct rv7xx_power_info {scalar_t__ mem_gddr5; scalar_t__ mclk_ss; } ;
struct TYPE_7__ {int reference_freq; } ;
struct TYPE_8__ {TYPE_2__ mpll; } ;
struct radeon_device {TYPE_3__ clock; } ;
struct radeon_atom_ss {int rate; int percentage; } ;
struct atom_mpll_param {int dll_speed; int post_div; int yclk_sel; int vco_mode; int clkfrac; int clkf; int bwcntl; } ;
struct TYPE_9__ {void* vMPLL_SS2; void* vMPLL_SS; void* vDLL_CNTL; void* vMCLK_PWRMGT_CNTL; void* vMPLL_DQ_FUNC_CNTL; void* vMPLL_AD_FUNC_CNTL; void* vMPLL_FUNC_CNTL_2; void* vMPLL_FUNC_CNTL_1; void* vMPLL_FUNC_CNTL; void* mclk_value; } ;
typedef TYPE_4__ SISLANDS_SMC_MCLK_VALUE ;


 int ASIC_INTERNAL_MEMORY_SS ;
 int BWCTRL (int ) ;
 int BWCTRL_MASK ;
 int CLKF (int ) ;
 int CLKFRAC (int ) ;
 int CLKFRAC_MASK ;
 int CLKF_MASK ;
 int CLKS (int) ;
 int CLKS_MASK ;
 int CLKV (int) ;
 int CLKV_MASK ;
 int DLL_SPEED (int ) ;
 int DLL_SPEED_MASK ;
 int MRDCK0_PDNB ;
 int MRDCK1_PDNB ;
 int VCO_MODE (int ) ;
 int VCO_MODE_MASK ;
 int YCLK_POST_DIV (int ) ;
 int YCLK_POST_DIV_MASK ;
 int YCLK_SEL (int ) ;
 int YCLK_SEL_MASK ;
 void* cpu_to_be32 (int) ;
 int radeon_atom_get_memory_pll_dividers (struct radeon_device*,int,int,struct atom_mpll_param*) ;
 scalar_t__ radeon_atombios_get_asic_ss_info (struct radeon_device*,struct radeon_atom_ss*,int ,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;

__attribute__((used)) static int si_populate_mclk_value(struct radeon_device *rdev,
      u32 engine_clock,
      u32 memory_clock,
      SISLANDS_SMC_MCLK_VALUE *mclk,
      bool strobe_mode,
      bool dll_state_on)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct si_power_info *si_pi = si_get_pi(rdev);
 u32 dll_cntl = si_pi->clock_registers.dll_cntl;
 u32 mclk_pwrmgt_cntl = si_pi->clock_registers.mclk_pwrmgt_cntl;
 u32 mpll_ad_func_cntl = si_pi->clock_registers.mpll_ad_func_cntl;
 u32 mpll_dq_func_cntl = si_pi->clock_registers.mpll_dq_func_cntl;
 u32 mpll_func_cntl = si_pi->clock_registers.mpll_func_cntl;
 u32 mpll_func_cntl_1 = si_pi->clock_registers.mpll_func_cntl_1;
 u32 mpll_func_cntl_2 = si_pi->clock_registers.mpll_func_cntl_2;
 u32 mpll_ss1 = si_pi->clock_registers.mpll_ss1;
 u32 mpll_ss2 = si_pi->clock_registers.mpll_ss2;
 struct atom_mpll_param mpll_param;
 int ret;

 ret = radeon_atom_get_memory_pll_dividers(rdev, memory_clock, strobe_mode, &mpll_param);
 if (ret)
  return ret;

 mpll_func_cntl &= ~BWCTRL_MASK;
 mpll_func_cntl |= BWCTRL(mpll_param.bwcntl);

 mpll_func_cntl_1 &= ~(CLKF_MASK | CLKFRAC_MASK | VCO_MODE_MASK);
 mpll_func_cntl_1 |= CLKF(mpll_param.clkf) |
  CLKFRAC(mpll_param.clkfrac) | VCO_MODE(mpll_param.vco_mode);

 mpll_ad_func_cntl &= ~YCLK_POST_DIV_MASK;
 mpll_ad_func_cntl |= YCLK_POST_DIV(mpll_param.post_div);

 if (pi->mem_gddr5) {
  mpll_dq_func_cntl &= ~(YCLK_SEL_MASK | YCLK_POST_DIV_MASK);
  mpll_dq_func_cntl |= YCLK_SEL(mpll_param.yclk_sel) |
   YCLK_POST_DIV(mpll_param.post_div);
 }

 if (pi->mclk_ss) {
  struct radeon_atom_ss ss;
  u32 freq_nom;
  u32 tmp;
  u32 reference_clock = rdev->clock.mpll.reference_freq;

  if (pi->mem_gddr5)
   freq_nom = memory_clock * 4;
  else
   freq_nom = memory_clock * 2;

  tmp = freq_nom / reference_clock;
  tmp = tmp * tmp;
  if (radeon_atombios_get_asic_ss_info(rdev, &ss,
           ASIC_INTERNAL_MEMORY_SS, freq_nom)) {
   u32 clks = reference_clock * 5 / ss.rate;
   u32 clkv = (u32)((((131 * ss.percentage * ss.rate) / 100) * tmp) / freq_nom);

   mpll_ss1 &= ~CLKV_MASK;
   mpll_ss1 |= CLKV(clkv);

   mpll_ss2 &= ~CLKS_MASK;
   mpll_ss2 |= CLKS(clks);
  }
 }

 mclk_pwrmgt_cntl &= ~DLL_SPEED_MASK;
 mclk_pwrmgt_cntl |= DLL_SPEED(mpll_param.dll_speed);

 if (dll_state_on)
  mclk_pwrmgt_cntl |= MRDCK0_PDNB | MRDCK1_PDNB;
 else
  mclk_pwrmgt_cntl &= ~(MRDCK0_PDNB | MRDCK1_PDNB);

 mclk->mclk_value = cpu_to_be32(memory_clock);
 mclk->vMPLL_FUNC_CNTL = cpu_to_be32(mpll_func_cntl);
 mclk->vMPLL_FUNC_CNTL_1 = cpu_to_be32(mpll_func_cntl_1);
 mclk->vMPLL_FUNC_CNTL_2 = cpu_to_be32(mpll_func_cntl_2);
 mclk->vMPLL_AD_FUNC_CNTL = cpu_to_be32(mpll_ad_func_cntl);
 mclk->vMPLL_DQ_FUNC_CNTL = cpu_to_be32(mpll_dq_func_cntl);
 mclk->vMCLK_PWRMGT_CNTL = cpu_to_be32(mclk_pwrmgt_cntl);
 mclk->vDLL_CNTL = cpu_to_be32(dll_cntl);
 mclk->vMPLL_SS = cpu_to_be32(mpll_ss1);
 mclk->vMPLL_SS2 = cpu_to_be32(mpll_ss2);

 return 0;
}
