
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb070d30_panel {int dsi; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_enable (int ) ;
 int mipi_dsi_dcs_enter_sleep_mode (int ) ;
 int mipi_dsi_dcs_exit_sleep_mode (int ) ;
 struct rb070d30_panel* panel_to_rb070d30_panel (struct drm_panel*) ;

__attribute__((used)) static int rb070d30_panel_enable(struct drm_panel *panel)
{
 struct rb070d30_panel *ctx = panel_to_rb070d30_panel(panel);
 int ret;

 ret = mipi_dsi_dcs_exit_sleep_mode(ctx->dsi);
 if (ret)
  return ret;

 ret = backlight_enable(ctx->backlight);
 if (ret)
  goto out;

 return 0;

out:
 mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
 return ret;
}
