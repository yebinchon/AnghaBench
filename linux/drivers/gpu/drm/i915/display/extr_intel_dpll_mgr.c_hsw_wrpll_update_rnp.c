
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct hsw_wrpll_rnp {unsigned int p; unsigned int n2; unsigned int r2; } ;


 unsigned int LC_FREQ_2K ;
 unsigned int abs_diff (unsigned int,unsigned int) ;

__attribute__((used)) static void hsw_wrpll_update_rnp(u64 freq2k, unsigned int budget,
     unsigned int r2, unsigned int n2,
     unsigned int p,
     struct hsw_wrpll_rnp *best)
{
 u64 a, b, c, d, diff, diff_best;


 if (best->p == 0) {
  best->p = p;
  best->n2 = n2;
  best->r2 = r2;
  return;
 }
 a = freq2k * budget * p * r2;
 b = freq2k * budget * best->p * best->r2;
 diff = abs_diff(freq2k * p * r2, LC_FREQ_2K * n2);
 diff_best = abs_diff(freq2k * best->p * best->r2,
        LC_FREQ_2K * best->n2);
 c = 1000000 * diff;
 d = 1000000 * diff_best;

 if (a < c && b < d) {

  if (best->p * best->r2 * diff < p * r2 * diff_best) {
   best->p = p;
   best->n2 = n2;
   best->r2 = r2;
  }
 } else if (a >= c && b < d) {

  best->p = p;
  best->n2 = n2;
  best->r2 = r2;
 } else if (a >= c && b >= d) {

  if (n2 * best->r2 * best->r2 > best->n2 * r2 * r2) {
   best->p = p;
   best->n2 = n2;
   best->r2 = r2;
  }
 }

}
