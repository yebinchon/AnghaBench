
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int cg_spll_func_cntl; int cg_spll_func_cntl_2; int cg_spll_func_cntl_3; int cg_spll_func_cntl_4; int cg_spll_spread_spectrum; int cg_spll_spread_spectrum_2; } ;
struct si_power_info {TYPE_1__ clock_registers; } ;
struct rv7xx_power_info {scalar_t__ sclk_ss; } ;
struct TYPE_7__ {int reference_freq; } ;
struct TYPE_8__ {TYPE_2__ spll; } ;
struct radeon_device {TYPE_3__ clock; } ;
struct radeon_atom_ss {int rate; int percentage; } ;
struct atom_clock_dividers {int ref_div; int post_div; } ;
struct TYPE_9__ {int sclk_value; int vCG_SPLL_FUNC_CNTL; int vCG_SPLL_FUNC_CNTL_2; int vCG_SPLL_FUNC_CNTL_3; int vCG_SPLL_FUNC_CNTL_4; int vCG_SPLL_SPREAD_SPECTRUM; int vCG_SPLL_SPREAD_SPECTRUM_2; } ;
typedef TYPE_4__ SISLANDS_SMC_SCLK_VALUE ;


 int ASIC_INTERNAL_ENGINE_SS ;
 int CLK_S (int) ;
 int CLK_S_MASK ;
 int CLK_V (int) ;
 int CLK_V_MASK ;
 int COMPUTE_ENGINE_PLL_PARAM ;
 int SCLK_MUX_SEL (int) ;
 int SCLK_MUX_SEL_MASK ;
 int SPLL_DITHEN ;
 int SPLL_FB_DIV (int) ;
 int SPLL_FB_DIV_MASK ;
 int SPLL_PDIV_A (int) ;
 int SPLL_PDIV_A_MASK ;
 int SPLL_REF_DIV (int) ;
 int SPLL_REF_DIV_MASK ;
 int SSEN ;
 int do_div (int,int) ;
 int radeon_atom_get_clock_dividers (struct radeon_device*,int ,int,int,struct atom_clock_dividers*) ;
 scalar_t__ radeon_atombios_get_asic_ss_info (struct radeon_device*,struct radeon_atom_ss*,int ,int) ;
 struct rv7xx_power_info* rv770_get_pi (struct radeon_device*) ;
 struct si_power_info* si_get_pi (struct radeon_device*) ;

__attribute__((used)) static int si_calculate_sclk_params(struct radeon_device *rdev,
        u32 engine_clock,
        SISLANDS_SMC_SCLK_VALUE *sclk)
{
 struct rv7xx_power_info *pi = rv770_get_pi(rdev);
 struct si_power_info *si_pi = si_get_pi(rdev);
 struct atom_clock_dividers dividers;
 u32 spll_func_cntl = si_pi->clock_registers.cg_spll_func_cntl;
 u32 spll_func_cntl_2 = si_pi->clock_registers.cg_spll_func_cntl_2;
 u32 spll_func_cntl_3 = si_pi->clock_registers.cg_spll_func_cntl_3;
 u32 spll_func_cntl_4 = si_pi->clock_registers.cg_spll_func_cntl_4;
 u32 cg_spll_spread_spectrum = si_pi->clock_registers.cg_spll_spread_spectrum;
 u32 cg_spll_spread_spectrum_2 = si_pi->clock_registers.cg_spll_spread_spectrum_2;
 u64 tmp;
 u32 reference_clock = rdev->clock.spll.reference_freq;
 u32 reference_divider;
 u32 fbdiv;
 int ret;

 ret = radeon_atom_get_clock_dividers(rdev, COMPUTE_ENGINE_PLL_PARAM,
          engine_clock, 0, &dividers);
 if (ret)
  return ret;

 reference_divider = 1 + dividers.ref_div;

 tmp = (u64) engine_clock * reference_divider * dividers.post_div * 16384;
 do_div(tmp, reference_clock);
 fbdiv = (u32) tmp;

 spll_func_cntl &= ~(SPLL_PDIV_A_MASK | SPLL_REF_DIV_MASK);
 spll_func_cntl |= SPLL_REF_DIV(dividers.ref_div);
 spll_func_cntl |= SPLL_PDIV_A(dividers.post_div);

 spll_func_cntl_2 &= ~SCLK_MUX_SEL_MASK;
 spll_func_cntl_2 |= SCLK_MUX_SEL(2);

 spll_func_cntl_3 &= ~SPLL_FB_DIV_MASK;
 spll_func_cntl_3 |= SPLL_FB_DIV(fbdiv);
 spll_func_cntl_3 |= SPLL_DITHEN;

 if (pi->sclk_ss) {
  struct radeon_atom_ss ss;
  u32 vco_freq = engine_clock * dividers.post_div;

  if (radeon_atombios_get_asic_ss_info(rdev, &ss,
           ASIC_INTERNAL_ENGINE_SS, vco_freq)) {
   u32 clk_s = reference_clock * 5 / (reference_divider * ss.rate);
   u32 clk_v = 4 * ss.percentage * fbdiv / (clk_s * 10000);

   cg_spll_spread_spectrum &= ~CLK_S_MASK;
   cg_spll_spread_spectrum |= CLK_S(clk_s);
   cg_spll_spread_spectrum |= SSEN;

   cg_spll_spread_spectrum_2 &= ~CLK_V_MASK;
   cg_spll_spread_spectrum_2 |= CLK_V(clk_v);
  }
 }

 sclk->sclk_value = engine_clock;
 sclk->vCG_SPLL_FUNC_CNTL = spll_func_cntl;
 sclk->vCG_SPLL_FUNC_CNTL_2 = spll_func_cntl_2;
 sclk->vCG_SPLL_FUNC_CNTL_3 = spll_func_cntl_3;
 sclk->vCG_SPLL_FUNC_CNTL_4 = spll_func_cntl_4;
 sclk->vCG_SPLL_SPREAD_SPECTRUM = cg_spll_spread_spectrum;
 sclk->vCG_SPLL_SPREAD_SPECTRUM_2 = cg_spll_spread_spectrum_2;

 return 0;
}
