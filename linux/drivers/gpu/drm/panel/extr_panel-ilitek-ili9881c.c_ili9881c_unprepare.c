
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ili9881c {int reset; int power; int dsi; } ;
struct drm_panel {int dummy; } ;


 int gpiod_set_value (int ,int) ;
 int mipi_dsi_dcs_enter_sleep_mode (int ) ;
 struct ili9881c* panel_to_ili9881c (struct drm_panel*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int ili9881c_unprepare(struct drm_panel *panel)
{
 struct ili9881c *ctx = panel_to_ili9881c(panel);

 mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
 regulator_disable(ctx->power);
 gpiod_set_value(ctx->reset, 1);

 return 0;
}
