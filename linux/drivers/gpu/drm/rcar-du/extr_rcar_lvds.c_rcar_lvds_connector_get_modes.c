
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_lvds {int panel; } ;
struct drm_connector {int dummy; } ;


 struct rcar_lvds* connector_to_rcar_lvds (struct drm_connector*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int rcar_lvds_connector_get_modes(struct drm_connector *connector)
{
 struct rcar_lvds *lvds = connector_to_rcar_lvds(connector);

 return drm_panel_get_modes(lvds->panel);
}
