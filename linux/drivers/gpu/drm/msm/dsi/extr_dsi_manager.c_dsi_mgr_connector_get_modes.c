
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dsi {struct drm_panel* panel; } ;
struct drm_panel {int dummy; } ;
struct drm_connector {int dummy; } ;


 int drm_panel_attach (struct drm_panel*,struct drm_connector*) ;
 int drm_panel_get_modes (struct drm_panel*) ;
 int dsi_mgr_connector_get_id (struct drm_connector*) ;
 struct msm_dsi* dsi_mgr_get_dsi (int) ;

__attribute__((used)) static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
{
 int id = dsi_mgr_connector_get_id(connector);
 struct msm_dsi *msm_dsi = dsi_mgr_get_dsi(id);
 struct drm_panel *panel = msm_dsi->panel;
 int num;

 if (!panel)
  return 0;





 drm_panel_attach(panel, connector);
 num = drm_panel_get_modes(panel);
 if (!num)
  return 0;

 return num;
}
