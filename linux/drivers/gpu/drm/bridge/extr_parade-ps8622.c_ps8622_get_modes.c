
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps8622_bridge {int panel; } ;
struct drm_connector {int dummy; } ;


 struct ps8622_bridge* connector_to_ps8622 (struct drm_connector*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int ps8622_get_modes(struct drm_connector *connector)
{
 struct ps8622_bridge *ps8622;

 ps8622 = connector_to_ps8622(connector);

 return drm_panel_get_modes(ps8622->panel);
}
