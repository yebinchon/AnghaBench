
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dpll_hw_state {int cfgcr2; int cfgcr1; } ;


 int DPLL_CFGCR1_DCO_FRACTION_MASK ;
 int DPLL_CFGCR1_DCO_INTEGER_MASK ;




 int DPLL_CFGCR2_KDIV_MASK ;




 int DPLL_CFGCR2_PDIV_MASK ;
 int DPLL_CFGCR2_QDIV_MODE (int) ;
 int DPLL_CFGCR2_QDIV_RATIO_MASK ;
 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int skl_calc_wrpll_link(const struct intel_dpll_hw_state *pll_state)
{
 u32 p0, p1, p2, dco_freq;

 p0 = pll_state->cfgcr2 & DPLL_CFGCR2_PDIV_MASK;
 p2 = pll_state->cfgcr2 & DPLL_CFGCR2_KDIV_MASK;

 if (pll_state->cfgcr2 & DPLL_CFGCR2_QDIV_MODE(1))
  p1 = (pll_state->cfgcr2 & DPLL_CFGCR2_QDIV_RATIO_MASK) >> 8;
 else
  p1 = 1;


 switch (p0) {
 case 131:
  p0 = 1;
  break;
 case 130:
  p0 = 2;
  break;
 case 129:
  p0 = 3;
  break;
 case 128:
  p0 = 7;
  break;
 }

 switch (p2) {
 case 132:
  p2 = 5;
  break;
 case 134:
  p2 = 2;
  break;
 case 133:
  p2 = 3;
  break;
 case 135:
  p2 = 1;
  break;
 }

 dco_freq = (pll_state->cfgcr1 & DPLL_CFGCR1_DCO_INTEGER_MASK)
  * 24 * 1000;

 dco_freq += (((pll_state->cfgcr1 & DPLL_CFGCR1_DCO_FRACTION_MASK) >> 9)
       * 24 * 1000) / 0x8000;

 if (WARN_ON(p0 == 0 || p1 == 0 || p2 == 0))
  return 0;

 return dco_freq / (p0 * p1 * p2 * 5);
}
