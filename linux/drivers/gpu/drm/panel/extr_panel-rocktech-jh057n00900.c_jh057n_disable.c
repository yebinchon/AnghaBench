
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct jh057n {int backlight; int dev; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 int mipi_dsi_dcs_set_display_off (struct mipi_dsi_device*) ;
 struct jh057n* panel_to_jh057n (struct drm_panel*) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int jh057n_disable(struct drm_panel *panel)
{
 struct jh057n *ctx = panel_to_jh057n(panel);
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);

 backlight_disable(ctx->backlight);
 return mipi_dsi_dcs_set_display_off(dsi);
}
