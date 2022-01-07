
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_rgb {int panel; } ;
struct drm_connector {int dummy; } ;


 struct sun4i_rgb* drm_connector_to_sun4i_rgb (struct drm_connector*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int sun4i_rgb_get_modes(struct drm_connector *connector)
{
 struct sun4i_rgb *rgb =
  drm_connector_to_sun4i_rgb(connector);

 return drm_panel_get_modes(rgb->panel);
}
