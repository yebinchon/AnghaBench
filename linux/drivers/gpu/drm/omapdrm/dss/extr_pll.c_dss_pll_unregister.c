
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {struct dss_device* dss; } ;
struct dss_device {struct dss_pll** plls; } ;


 int ARRAY_SIZE (struct dss_pll**) ;

void dss_pll_unregister(struct dss_pll *pll)
{
 struct dss_device *dss = pll->dss;
 int i;

 for (i = 0; i < ARRAY_SIZE(dss->plls); ++i) {
  if (dss->plls[i] == pll) {
   dss->plls[i] = ((void*)0);
   pll->dss = ((void*)0);
   return;
  }
 }
}
