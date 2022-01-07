
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mod; } ;
struct rcar_lvds {TYPE_2__ clocks; int dev; TYPE_1__* info; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_3__ {int quirks; } ;


 int ENODEV ;
 int RCAR_LVDS_QUIRK_EXT_PLL ;
 scalar_t__ WARN_ON (int) ;
 int __rcar_lvds_pll_setup_d3_e3 (struct rcar_lvds*,unsigned long,int) ;
 struct rcar_lvds* bridge_to_rcar_lvds (struct drm_bridge*) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (int ,char*,unsigned long) ;

int rcar_lvds_clk_enable(struct drm_bridge *bridge, unsigned long freq)
{
 struct rcar_lvds *lvds = bridge_to_rcar_lvds(bridge);
 int ret;

 if (WARN_ON(!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)))
  return -ENODEV;

 dev_dbg(lvds->dev, "enabling LVDS PLL, freq=%luHz\n", freq);

 ret = clk_prepare_enable(lvds->clocks.mod);
 if (ret < 0)
  return ret;

 __rcar_lvds_pll_setup_d3_e3(lvds, freq, 1);

 return 0;
}
