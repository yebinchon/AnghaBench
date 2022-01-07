
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hsw_wrpll_rnp {unsigned int n2; unsigned int p; unsigned int r2; int member_2; int member_1; int member_0; } ;


 int LC_FREQ ;
 scalar_t__ P_INC ;
 unsigned int P_MAX ;
 unsigned int P_MIN ;
 int REF_MAX ;
 int REF_MIN ;
 unsigned int VCO_MAX ;
 unsigned int VCO_MIN ;
 unsigned int hsw_wrpll_get_budget_for_freq (int) ;
 int hsw_wrpll_update_rnp (int,unsigned int,unsigned int,unsigned int,unsigned int,struct hsw_wrpll_rnp*) ;

__attribute__((used)) static void
hsw_ddi_calculate_wrpll(int clock ,
   unsigned *r2_out, unsigned *n2_out, unsigned *p_out)
{
 u64 freq2k;
 unsigned p, n2, r2;
 struct hsw_wrpll_rnp best = { 0, 0, 0 };
 unsigned budget;

 freq2k = clock / 100;

 budget = hsw_wrpll_get_budget_for_freq(clock);



 if (freq2k == 5400000) {
  *n2_out = 2;
  *p_out = 1;
  *r2_out = 2;
  return;
 }
 for (r2 = LC_FREQ * 2 / REF_MAX + 1;
      r2 <= LC_FREQ * 2 / REF_MIN;
      r2++) {
  for (n2 = VCO_MIN * r2 / LC_FREQ + 1;
       n2 <= VCO_MAX * r2 / LC_FREQ;
       n2++) {

   for (p = P_MIN; p <= P_MAX; p += P_INC)
    hsw_wrpll_update_rnp(freq2k, budget,
           r2, n2, p, &best);
  }
 }

 *n2_out = best.n2;
 *p_out = best.p;
 *r2_out = best.r2;
}
