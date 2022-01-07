
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feiyang {int dsi; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 int mipi_dsi_dcs_set_display_off (int ) ;
 struct feiyang* panel_to_feiyang (struct drm_panel*) ;

__attribute__((used)) static int feiyang_disable(struct drm_panel *panel)
{
 struct feiyang *ctx = panel_to_feiyang(panel);

 backlight_disable(ctx->backlight);
 return mipi_dsi_dcs_set_display_off(ctx->dsi);
}
