
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_pll {int dummy; } ;
struct dss_device {int dummy; } ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;
 struct dss_pll* dss_pll_find (struct dss_device*,char*) ;

struct dss_pll *dss_pll_find_by_src(struct dss_device *dss,
        enum dss_clk_source src)
{
 struct dss_pll *pll;

 switch (src) {
 default:
 case 135:
  return ((void*)0);

 case 134:
  return dss_pll_find(dss, "hdmi");

 case 133:
 case 132:
 case 131:
  pll = dss_pll_find(dss, "dsi0");
  if (!pll)
   pll = dss_pll_find(dss, "video0");
  return pll;

 case 130:
 case 129:
 case 128:
  pll = dss_pll_find(dss, "dsi1");
  if (!pll)
   pll = dss_pll_find(dss, "video1");
  return pll;
 }
}
