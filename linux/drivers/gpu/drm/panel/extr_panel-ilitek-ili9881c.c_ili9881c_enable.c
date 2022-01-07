
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9881c {int backlight; int dsi; } ;
struct drm_panel {int dummy; } ;


 int backlight_enable (int ) ;
 int mipi_dsi_dcs_set_display_on (int ) ;
 int msleep (int) ;
 struct ili9881c* panel_to_ili9881c (struct drm_panel*) ;

__attribute__((used)) static int ili9881c_enable(struct drm_panel *panel)
{
 struct ili9881c *ctx = panel_to_ili9881c(panel);

 msleep(120);

 mipi_dsi_dcs_set_display_on(ctx->dsi);
 backlight_enable(ctx->backlight);

 return 0;
}
