
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_bridge {int panel; } ;
struct drm_connector {int dummy; } ;


 struct panel_bridge* drm_connector_to_panel_bridge (struct drm_connector*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int panel_bridge_connector_get_modes(struct drm_connector *connector)
{
 struct panel_bridge *panel_bridge =
  drm_connector_to_panel_bridge(connector);

 return drm_panel_get_modes(panel_bridge->panel);
}
