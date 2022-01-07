
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb070d30_panel {int dsi; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 int mipi_dsi_dcs_enter_sleep_mode (int ) ;
 struct rb070d30_panel* panel_to_rb070d30_panel (struct drm_panel*) ;

__attribute__((used)) static int rb070d30_panel_disable(struct drm_panel *panel)
{
 struct rb070d30_panel *ctx = panel_to_rb070d30_panel(panel);

 backlight_disable(ctx->backlight);
 return mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
}
