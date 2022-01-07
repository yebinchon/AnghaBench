
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct feiyang {int dvdd; int avdd; int reset; int dsi; } ;
struct drm_panel {int dev; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int gpiod_set_value (int ,int ) ;
 int mipi_dsi_dcs_enter_sleep_mode (int ) ;
 int mipi_dsi_dcs_set_display_off (int ) ;
 int msleep (int) ;
 struct feiyang* panel_to_feiyang (struct drm_panel*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int feiyang_unprepare(struct drm_panel *panel)
{
 struct feiyang *ctx = panel_to_feiyang(panel);
 int ret;

 ret = mipi_dsi_dcs_set_display_off(ctx->dsi);
 if (ret < 0)
  DRM_DEV_ERROR(panel->dev, "failed to set display off: %d\n",
         ret);

 ret = mipi_dsi_dcs_enter_sleep_mode(ctx->dsi);
 if (ret < 0)
  DRM_DEV_ERROR(panel->dev, "failed to enter sleep mode: %d\n",
         ret);


 msleep(200);

 gpiod_set_value(ctx->reset, 0);

 regulator_disable(ctx->avdd);


 msleep(10);

 regulator_disable(ctx->dvdd);

 return 0;
}
