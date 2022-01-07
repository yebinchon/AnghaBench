
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_lvds {int dual_link; } ;
struct drm_bridge {int dummy; } ;


 struct rcar_lvds* bridge_to_rcar_lvds (struct drm_bridge*) ;

bool rcar_lvds_dual_link(struct drm_bridge *bridge)
{
 struct rcar_lvds *lvds = bridge_to_rcar_lvds(bridge);

 return lvds->dual_link;
}
