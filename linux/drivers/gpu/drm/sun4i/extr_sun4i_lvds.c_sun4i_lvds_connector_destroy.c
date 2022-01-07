
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_lvds {int panel; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 struct sun4i_lvds* drm_connector_to_sun4i_lvds (struct drm_connector*) ;
 int drm_panel_detach (int ) ;

__attribute__((used)) static void
sun4i_lvds_connector_destroy(struct drm_connector *connector)
{
 struct sun4i_lvds *lvds = drm_connector_to_sun4i_lvds(connector);

 drm_panel_detach(lvds->panel);
 drm_connector_cleanup(connector);
}
