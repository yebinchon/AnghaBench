
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_lvds {TYPE_1__* info; } ;
struct drm_display_mode {int clock; } ;
struct drm_bridge {int dummy; } ;
struct TYPE_2__ {int quirks; } ;


 int RCAR_LVDS_QUIRK_EXT_PLL ;
 struct rcar_lvds* bridge_to_rcar_lvds (struct drm_bridge*) ;
 int clamp (int ,int,int) ;

__attribute__((used)) static bool rcar_lvds_mode_fixup(struct drm_bridge *bridge,
     const struct drm_display_mode *mode,
     struct drm_display_mode *adjusted_mode)
{
 struct rcar_lvds *lvds = bridge_to_rcar_lvds(bridge);
 int min_freq;






 min_freq = lvds->info->quirks & RCAR_LVDS_QUIRK_EXT_PLL ? 5000 : 31000;
 adjusted_mode->clock = clamp(adjusted_mode->clock, min_freq, 148500);

 return 1;
}
