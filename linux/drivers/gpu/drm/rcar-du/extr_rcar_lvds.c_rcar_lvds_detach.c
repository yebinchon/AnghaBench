
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_lvds {scalar_t__ panel; } ;
struct drm_bridge {int dummy; } ;


 struct rcar_lvds* bridge_to_rcar_lvds (struct drm_bridge*) ;
 int drm_panel_detach (scalar_t__) ;

__attribute__((used)) static void rcar_lvds_detach(struct drm_bridge *bridge)
{
 struct rcar_lvds *lvds = bridge_to_rcar_lvds(bridge);

 if (lvds->panel)
  drm_panel_detach(lvds->panel);
}
