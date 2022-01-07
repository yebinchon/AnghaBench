
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sn_bridge {int panel; } ;
struct drm_connector {int dummy; } ;


 struct ti_sn_bridge* connector_to_ti_sn_bridge (struct drm_connector*) ;
 int drm_panel_get_modes (int ) ;

__attribute__((used)) static int ti_sn_bridge_connector_get_modes(struct drm_connector *connector)
{
 struct ti_sn_bridge *pdata = connector_to_ti_sn_bridge(connector);

 return drm_panel_get_modes(pdata->panel);
}
