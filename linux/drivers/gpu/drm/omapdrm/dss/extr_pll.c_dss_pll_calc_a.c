
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll_hw {unsigned long clkdco_max; unsigned long fint_min; unsigned long fint_max; scalar_t__ errata_i886; int m_max; int n_max; } ;
struct dss_pll {struct dss_pll_hw* hw; } ;
typedef scalar_t__ (* dss_pll_calc_func ) (int,int,unsigned long,unsigned long,void*) ;


 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 unsigned long ULONG_MAX ;
 int max (unsigned long,unsigned long) ;
 int min (unsigned int,int ) ;
 int min3 (unsigned int,unsigned int,int ) ;
 int swap (int,int) ;

bool dss_pll_calc_a(const struct dss_pll *pll, unsigned long clkin,
  unsigned long pll_min, unsigned long pll_max,
  dss_pll_calc_func func, void *data)
{
 const struct dss_pll_hw *hw = pll->hw;
 int n, n_start, n_stop, n_inc;
 int m, m_start, m_stop, m_inc;
 unsigned long fint, clkdco;
 unsigned long pll_hw_max;
 unsigned long fint_hw_min, fint_hw_max;

 pll_hw_max = hw->clkdco_max;

 fint_hw_min = hw->fint_min;
 fint_hw_max = hw->fint_max;

 n_start = max(DIV_ROUND_UP(clkin, fint_hw_max), 1ul);
 n_stop = min((unsigned)(clkin / fint_hw_min), hw->n_max);
 n_inc = 1;

 if (hw->errata_i886) {
  swap(n_start, n_stop);
  n_inc = -1;
 }

 pll_max = pll_max ? pll_max : ULONG_MAX;

 for (n = n_start; n != n_stop; n += n_inc) {
  fint = clkin / n;

  m_start = max(DIV_ROUND_UP(DIV_ROUND_UP(pll_min, fint), 2),
    1ul);
  m_stop = min3((unsigned)(pll_max / fint / 2),
    (unsigned)(pll_hw_max / fint / 2),
    hw->m_max);
  m_inc = 1;

  if (hw->errata_i886) {
   swap(m_start, m_stop);
   m_inc = -1;
  }

  for (m = m_start; m != m_stop; m += m_inc) {
   clkdco = 2 * m * fint;

   if (func(n, m, fint, clkdco, data))
    return 1;
  }
 }

 return 0;
}
