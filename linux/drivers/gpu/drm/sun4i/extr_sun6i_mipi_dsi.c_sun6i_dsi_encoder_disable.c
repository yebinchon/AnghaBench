
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dsi {int dev; int dphy; int panel; } ;
struct drm_encoder {int dummy; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int IS_ERR (int ) ;
 int drm_panel_disable (int ) ;
 int drm_panel_unprepare (int ) ;
 struct sun6i_dsi* encoder_to_sun6i_dsi (struct drm_encoder*) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void sun6i_dsi_encoder_disable(struct drm_encoder *encoder)
{
 struct sun6i_dsi *dsi = encoder_to_sun6i_dsi(encoder);

 DRM_DEBUG_DRIVER("Disabling DSI output\n");

 if (!IS_ERR(dsi->panel)) {
  drm_panel_disable(dsi->panel);
  drm_panel_unprepare(dsi->panel);
 }

 phy_power_off(dsi->dphy);
 phy_exit(dsi->dphy);

 pm_runtime_put(dsi->dev);
}
