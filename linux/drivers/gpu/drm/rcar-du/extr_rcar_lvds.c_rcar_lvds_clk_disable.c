
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


 int LVDPLLCR ;
 int RCAR_LVDS_QUIRK_EXT_PLL ;
 scalar_t__ WARN_ON (int) ;
 struct rcar_lvds* bridge_to_rcar_lvds (struct drm_bridge*) ;
 int clk_disable_unprepare (int ) ;
 int dev_dbg (int ,char*) ;
 int rcar_lvds_write (struct rcar_lvds*,int ,int ) ;

void rcar_lvds_clk_disable(struct drm_bridge *bridge)
{
 struct rcar_lvds *lvds = bridge_to_rcar_lvds(bridge);

 if (WARN_ON(!(lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL)))
  return;

 dev_dbg(lvds->dev, "disabling LVDS PLL\n");

 rcar_lvds_write(lvds, LVDPLLCR, 0);

 clk_disable_unprepare(lvds->clocks.mod);
}
