
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dpll_hw_state {int pll0; int pll3; int pll2; int pll1; int ebb0; } ;
struct dpll {int m1; int m2; int n; int p1; int p2; } ;


 int PORT_PLL_M2_FRAC_ENABLE ;
 int PORT_PLL_M2_FRAC_MASK ;
 int PORT_PLL_M2_MASK ;
 int PORT_PLL_N_MASK ;
 int PORT_PLL_N_SHIFT ;
 int PORT_PLL_P1_MASK ;
 int PORT_PLL_P1_SHIFT ;
 int PORT_PLL_P2_MASK ;
 int PORT_PLL_P2_SHIFT ;
 int chv_calc_dpll_params (int,struct dpll*) ;

__attribute__((used)) static int bxt_calc_pll_link(const struct intel_dpll_hw_state *pll_state)
{
 struct dpll clock;

 clock.m1 = 2;
 clock.m2 = (pll_state->pll0 & PORT_PLL_M2_MASK) << 22;
 if (pll_state->pll3 & PORT_PLL_M2_FRAC_ENABLE)
  clock.m2 |= pll_state->pll2 & PORT_PLL_M2_FRAC_MASK;
 clock.n = (pll_state->pll1 & PORT_PLL_N_MASK) >> PORT_PLL_N_SHIFT;
 clock.p1 = (pll_state->ebb0 & PORT_PLL_P1_MASK) >> PORT_PLL_P1_SHIFT;
 clock.p2 = (pll_state->ebb0 & PORT_PLL_P2_MASK) >> PORT_PLL_P2_SHIFT;

 return chv_calc_dpll_params(100000, &clock);
}
