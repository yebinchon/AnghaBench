
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int dummy; } ;


 int dss_pll_disable (struct dss_pll*) ;
 int dss_pll_enable (struct dss_pll*) ;

__attribute__((used)) static int dpi_verify_pll(struct dss_pll *pll)
{
 int r;



 r = dss_pll_enable(pll);
 if (r)
  return r;

 dss_pll_disable(pll);

 return 0;
}
