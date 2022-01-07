
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_dsi {int state; int dev; int out_bridge; int panel; } ;
struct drm_encoder {int dummy; } ;


 int DSIM_STATE_ENABLED ;
 int DSIM_STATE_VIDOUT_AVAILABLE ;
 int drm_bridge_disable (int ) ;
 int drm_bridge_post_disable (int ) ;
 int drm_panel_disable (int ) ;
 int drm_panel_unprepare (int ) ;
 struct exynos_dsi* encoder_to_dsi (struct drm_encoder*) ;
 int exynos_dsi_set_display_enable (struct exynos_dsi*,int) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void exynos_dsi_disable(struct drm_encoder *encoder)
{
 struct exynos_dsi *dsi = encoder_to_dsi(encoder);

 if (!(dsi->state & DSIM_STATE_ENABLED))
  return;

 dsi->state &= ~DSIM_STATE_VIDOUT_AVAILABLE;

 drm_panel_disable(dsi->panel);
 drm_bridge_disable(dsi->out_bridge);
 exynos_dsi_set_display_enable(dsi, 0);
 drm_panel_unprepare(dsi->panel);
 drm_bridge_post_disable(dsi->out_bridge);
 dsi->state &= ~DSIM_STATE_ENABLED;
 pm_runtime_put_sync(dsi->dev);
}
