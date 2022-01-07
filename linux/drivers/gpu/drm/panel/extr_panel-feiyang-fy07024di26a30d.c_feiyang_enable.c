
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feiyang {int backlight; int dsi; } ;
struct drm_panel {int dummy; } ;


 int backlight_enable (int ) ;
 int mipi_dsi_dcs_set_display_on (int ) ;
 int msleep (int) ;
 struct feiyang* panel_to_feiyang (struct drm_panel*) ;

__attribute__((used)) static int feiyang_enable(struct drm_panel *panel)
{
 struct feiyang *ctx = panel_to_feiyang(panel);


 msleep(200);

 mipi_dsi_dcs_set_display_on(ctx->dsi);
 backlight_enable(ctx->backlight);

 return 0;
}
