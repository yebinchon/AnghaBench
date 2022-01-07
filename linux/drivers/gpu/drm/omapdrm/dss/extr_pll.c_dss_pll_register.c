
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {struct dss_device* dss; } ;
struct dss_device {struct dss_pll** plls; } ;


 int ARRAY_SIZE (struct dss_pll**) ;
 int EBUSY ;

int dss_pll_register(struct dss_device *dss, struct dss_pll *pll)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dss->plls); ++i) {
  if (!dss->plls[i]) {
   dss->plls[i] = pll;
   pll->dss = dss;
   return 0;
  }
 }

 return -EBUSY;
}
