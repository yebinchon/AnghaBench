
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_device {int syscon_pll_ctrl_offset; int syscon_pll_ctrl; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
typedef enum dss_clk_source { ____Placeholder_dss_clk_source } dss_clk_source ;


 int DSSERR (char*) ;





 int EINVAL ;



 int regmap_update_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static int dss_ctrl_pll_set_control_mux(struct dss_device *dss,
     enum dss_clk_source clk_src,
     enum omap_channel channel)
{
 unsigned int shift, val;

 if (!dss->syscon_pll_ctrl)
  return -EINVAL;

 switch (channel) {
 case 130:
  shift = 3;

  switch (clk_src) {
  case 134:
   val = 0; break;
  case 135:
   val = 1; break;
  default:
   DSSERR("error in PLL mux config for LCD\n");
   return -EINVAL;
  }

  break;
 case 129:
  shift = 5;

  switch (clk_src) {
  case 133:
   val = 0; break;
  case 131:
   val = 1; break;
  case 135:
   val = 2; break;
  default:
   DSSERR("error in PLL mux config for LCD2\n");
   return -EINVAL;
  }

  break;
 case 128:
  shift = 7;

  switch (clk_src) {
  case 132:
   val = 0; break;
  case 133:
   val = 1; break;
  case 135:
   val = 2; break;
  default:
   DSSERR("error in PLL mux config for LCD3\n");
   return -EINVAL;
  }

  break;
 default:
  DSSERR("error in PLL mux config\n");
  return -EINVAL;
 }

 regmap_update_bits(dss->syscon_pll_ctrl, dss->syscon_pll_ctrl_offset,
  0x3 << shift, val << shift);

 return 0;
}
