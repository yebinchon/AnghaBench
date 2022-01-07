
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
typedef unsigned int u32 ;
struct dss_pll_hw {int fint_max; int clkdco_min; } ;
struct dss_pll_clock_info {unsigned int n; unsigned int m; unsigned int mf; unsigned int* mX; unsigned int sd; unsigned long fint; unsigned long clkdco; unsigned long* clkout; } ;
struct dss_pll {struct dss_pll_hw* hw; } ;


 unsigned int DIV_ROUND_UP (unsigned long,int) ;
 int DSSDBG (char*,unsigned long,unsigned long,...) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ div_u64 (unsigned long,int) ;
 unsigned long roundup (int ,unsigned long) ;

bool dss_pll_calc_b(const struct dss_pll *pll, unsigned long clkin,
 unsigned long target_clkout, struct dss_pll_clock_info *cinfo)
{
 unsigned long fint, clkdco, clkout;
 unsigned long target_clkdco;
 unsigned long min_dco;
 unsigned int n, m, mf, m2, sd;
 const struct dss_pll_hw *hw = pll->hw;

 DSSDBG("clkin %lu, target clkout %lu\n", clkin, target_clkout);


 n = DIV_ROUND_UP(clkin, hw->fint_max);
 fint = clkin / n;


 min_dco = roundup(hw->clkdco_min, fint);
 m2 = DIV_ROUND_UP(min_dco, target_clkout);
 if (m2 == 0)
  m2 = 1;

 target_clkdco = target_clkout * m2;
 m = target_clkdco / fint;

 clkdco = fint * m;


 if (WARN_ON(target_clkdco - clkdco > fint))
  mf = 0;
 else
  mf = (u32)div_u64(262144ull * (target_clkdco - clkdco), fint);

 if (mf > 0)
  clkdco += (u32)div_u64((u64)mf * fint, 262144);

 clkout = clkdco / m2;


 sd = DIV_ROUND_UP(fint * m, 250000000);

 DSSDBG("N = %u, M = %u, M.f = %u, M2 = %u, SD = %u\n",
  n, m, mf, m2, sd);
 DSSDBG("Fint %lu, clkdco %lu, clkout %lu\n", fint, clkdco, clkout);

 cinfo->n = n;
 cinfo->m = m;
 cinfo->mf = mf;
 cinfo->mX[0] = m2;
 cinfo->sd = sd;

 cinfo->fint = fint;
 cinfo->clkdco = clkdco;
 cinfo->clkout[0] = clkout;

 return 1;
}
