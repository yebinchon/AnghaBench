
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;
unsigned int dss_pll_get_clkout_idx_for_src(enum dss_clk_source src)
{
 switch (src) {
 case 134:
  return 0;

 case 133:
 case 130:
  return 0;

 case 132:
 case 129:
  return 1;

 case 131:
 case 128:
  return 2;

 default:
  return 0;
 }
}
