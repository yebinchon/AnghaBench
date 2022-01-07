
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcde_dsi {scalar_t__ panel; } ;
struct drm_connector {int dummy; } ;


 struct mcde_dsi* connector_to_mcde_dsi (struct drm_connector*) ;
 int drm_panel_get_modes (scalar_t__) ;

__attribute__((used)) static int mcde_dsi_get_modes(struct drm_connector *connector)
{
 struct mcde_dsi *d = connector_to_mcde_dsi(connector);


 if (d->panel)
  return drm_panel_get_modes(d->panel);



 return 0;
}
