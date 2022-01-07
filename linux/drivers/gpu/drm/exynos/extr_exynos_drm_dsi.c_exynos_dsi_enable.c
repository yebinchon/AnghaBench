
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int state; int dev; scalar_t__ panel; int out_bridge; } ;
struct drm_encoder {int dummy; } ;


 int DSIM_STATE_ENABLED ;
 int DSIM_STATE_VIDOUT_AVAILABLE ;
 int drm_bridge_enable (int ) ;
 int drm_bridge_pre_enable (int ) ;
 int drm_panel_enable (scalar_t__) ;
 int drm_panel_prepare (scalar_t__) ;
 int drm_panel_unprepare (scalar_t__) ;
 struct exynos_dsi* encoder_to_dsi (struct drm_encoder*) ;
 int exynos_dsi_set_display_enable (struct exynos_dsi*,int) ;
 int exynos_dsi_set_display_mode (struct exynos_dsi*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void exynos_dsi_enable(struct drm_encoder *encoder)
{
 struct exynos_dsi *dsi = encoder_to_dsi(encoder);
 int ret;

 if (dsi->state & DSIM_STATE_ENABLED)
  return;

 pm_runtime_get_sync(dsi->dev);
 dsi->state |= DSIM_STATE_ENABLED;

 if (dsi->panel) {
  ret = drm_panel_prepare(dsi->panel);
  if (ret < 0)
   goto err_put_sync;
 } else {
  drm_bridge_pre_enable(dsi->out_bridge);
 }

 exynos_dsi_set_display_mode(dsi);
 exynos_dsi_set_display_enable(dsi, 1);

 if (dsi->panel) {
  ret = drm_panel_enable(dsi->panel);
  if (ret < 0)
   goto err_display_disable;
 } else {
  drm_bridge_enable(dsi->out_bridge);
 }

 dsi->state |= DSIM_STATE_VIDOUT_AVAILABLE;
 return;

err_display_disable:
 exynos_dsi_set_display_enable(dsi, 0);
 drm_panel_unprepare(dsi->panel);

err_put_sync:
 dsi->state &= ~DSIM_STATE_ENABLED;
 pm_runtime_put(dsi->dev);
}
