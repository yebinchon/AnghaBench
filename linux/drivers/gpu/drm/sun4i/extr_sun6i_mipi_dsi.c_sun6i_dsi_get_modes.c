
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int panel; } ;
struct drm_connector {int dummy; } ;


 struct sun6i_dsi* connector_to_sun6i_dsi (struct drm_connector*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int sun6i_dsi_get_modes(struct drm_connector *connector)
{
 struct sun6i_dsi *dsi = connector_to_sun6i_dsi(connector);

 return drm_panel_get_modes(dsi->panel);
}
