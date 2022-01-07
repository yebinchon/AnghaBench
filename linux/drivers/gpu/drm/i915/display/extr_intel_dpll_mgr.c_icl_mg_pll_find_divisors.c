
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dpll_hw_state {int mg_clktop2_hsclkctl; int mg_clktop2_coreclkctl1; int mg_refclkin_ctl; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO (int) ;
 int MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL (int) ;
 int MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO (int) ;
 int MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2 ;
 int MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3 ;
 int MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5 ;
 int MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7 ;
 int MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL (int) ;
 int MG_REFCLKIN_CTL_OD_2_MUX (int) ;
 int MISSING_CASE (int) ;

__attribute__((used)) static bool icl_mg_pll_find_divisors(int clock_khz, bool is_dp, bool use_ssc,
         u32 *target_dco_khz,
         struct intel_dpll_hw_state *state)
{
 u32 dco_min_freq, dco_max_freq;
 int div1_vals[] = {7, 5, 3, 2};
 unsigned int i;
 int div2;

 dco_min_freq = is_dp ? 8100000 : use_ssc ? 8000000 : 7992000;
 dco_max_freq = is_dp ? 8100000 : 10000000;

 for (i = 0; i < ARRAY_SIZE(div1_vals); i++) {
  int div1 = div1_vals[i];

  for (div2 = 10; div2 > 0; div2--) {
   int dco = div1 * div2 * clock_khz * 5;
   int a_divratio, tlinedrv, inputsel;
   u32 hsdiv;

   if (dco < dco_min_freq || dco > dco_max_freq)
    continue;

   if (div2 >= 2) {
    a_divratio = is_dp ? 10 : 5;
    tlinedrv = 2;
   } else {
    a_divratio = 5;
    tlinedrv = 0;
   }
   inputsel = is_dp ? 0 : 1;

   switch (div1) {
   default:
    MISSING_CASE(div1);

   case 2:
    hsdiv = MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2;
    break;
   case 3:
    hsdiv = MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3;
    break;
   case 5:
    hsdiv = MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5;
    break;
   case 7:
    hsdiv = MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7;
    break;
   }

   *target_dco_khz = dco;

   state->mg_refclkin_ctl = MG_REFCLKIN_CTL_OD_2_MUX(1);

   state->mg_clktop2_coreclkctl1 =
    MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(a_divratio);

   state->mg_clktop2_hsclkctl =
    MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(tlinedrv) |
    MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(inputsel) |
    hsdiv |
    MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO(div2);

   return 1;
  }
 }

 return 0;
}
