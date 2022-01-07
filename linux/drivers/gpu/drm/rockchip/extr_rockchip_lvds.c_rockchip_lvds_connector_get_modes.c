
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_lvds {struct drm_panel* panel; } ;
struct drm_panel {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct rockchip_lvds* connector_to_lvds (struct drm_connector*) ;
 int drm_panel_get_modes (struct drm_panel*) ;

__attribute__((used)) static int rockchip_lvds_connector_get_modes(struct drm_connector *connector)
{
 struct rockchip_lvds *lvds = connector_to_lvds(connector);
 struct drm_panel *panel = lvds->panel;

 return drm_panel_get_modes(panel);
}
