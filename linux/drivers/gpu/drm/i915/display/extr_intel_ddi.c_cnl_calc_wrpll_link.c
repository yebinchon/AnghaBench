
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dpll_hw_state {int cfgcr1; int cfgcr0; } ;
struct drm_i915_private {int dummy; } ;


 int DPLL_CFGCR0_DCO_FRACTION_MASK ;
 int DPLL_CFGCR0_DCO_FRACTION_SHIFT ;
 int DPLL_CFGCR0_DCO_INTEGER_MASK ;



 int DPLL_CFGCR1_KDIV_MASK ;




 int DPLL_CFGCR1_PDIV_MASK ;
 int DPLL_CFGCR1_QDIV_MODE (int) ;
 int DPLL_CFGCR1_QDIV_RATIO_MASK ;
 int DPLL_CFGCR1_QDIV_RATIO_SHIFT ;
 scalar_t__ WARN_ON (int) ;
 int cnl_hdmi_pll_ref_clock (struct drm_i915_private*) ;

int cnl_calc_wrpll_link(struct drm_i915_private *dev_priv,
   struct intel_dpll_hw_state *pll_state)
{
 u32 p0, p1, p2, dco_freq, ref_clock;

 p0 = pll_state->cfgcr1 & DPLL_CFGCR1_PDIV_MASK;
 p2 = pll_state->cfgcr1 & DPLL_CFGCR1_KDIV_MASK;

 if (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_MODE(1))
  p1 = (pll_state->cfgcr1 & DPLL_CFGCR1_QDIV_RATIO_MASK) >>
   DPLL_CFGCR1_QDIV_RATIO_SHIFT;
 else
  p1 = 1;


 switch (p0) {
 case 131:
  p0 = 2;
  break;
 case 130:
  p0 = 3;
  break;
 case 129:
  p0 = 5;
  break;
 case 128:
  p0 = 7;
  break;
 }

 switch (p2) {
 case 134:
  p2 = 1;
  break;
 case 133:
  p2 = 2;
  break;
 case 132:
  p2 = 3;
  break;
 }

 ref_clock = cnl_hdmi_pll_ref_clock(dev_priv);

 dco_freq = (pll_state->cfgcr0 & DPLL_CFGCR0_DCO_INTEGER_MASK)
  * ref_clock;

 dco_freq += (((pll_state->cfgcr0 & DPLL_CFGCR0_DCO_FRACTION_MASK) >>
        DPLL_CFGCR0_DCO_FRACTION_SHIFT) * ref_clock) / 0x8000;

 if (WARN_ON(p0 == 0 || p1 == 0 || p2 == 0))
  return 0;

 return dco_freq / (p0 * p1 * p2 * 5);
}
