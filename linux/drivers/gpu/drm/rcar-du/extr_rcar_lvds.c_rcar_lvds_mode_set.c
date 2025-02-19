
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct rcar_lvds {struct drm_display_mode display_mode; } ;
struct drm_bridge {int dummy; } ;


 struct rcar_lvds* bridge_to_rcar_lvds (struct drm_bridge*) ;
 int rcar_lvds_get_lvds_mode (struct rcar_lvds*) ;

__attribute__((used)) static void rcar_lvds_mode_set(struct drm_bridge *bridge,
          const struct drm_display_mode *mode,
          const struct drm_display_mode *adjusted_mode)
{
 struct rcar_lvds *lvds = bridge_to_rcar_lvds(bridge);

 lvds->display_mode = *adjusted_mode;

 rcar_lvds_get_lvds_mode(lvds);
}
