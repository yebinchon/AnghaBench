
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9881c {int dsi; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 int mipi_dsi_dcs_set_display_off (int ) ;
 struct ili9881c* panel_to_ili9881c (struct drm_panel*) ;

__attribute__((used)) static int ili9881c_disable(struct drm_panel *panel)
{
 struct ili9881c *ctx = panel_to_ili9881c(panel);

 backlight_disable(ctx->backlight);
 return mipi_dsi_dcs_set_display_off(ctx->dsi);
}
