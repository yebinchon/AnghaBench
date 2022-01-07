
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct truly_nt35597 {int prepared; int dev; TYPE_1__** dsi; } ;
struct drm_panel {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode_flags; } ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int MIPI_DCS_ENTER_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_OFF ;
 int msleep (int) ;
 struct truly_nt35597* panel_to_ctx (struct drm_panel*) ;
 int truly_dcs_write (struct drm_panel*,int ) ;
 int truly_nt35597_power_off (struct truly_nt35597*) ;

__attribute__((used)) static int truly_nt35597_unprepare(struct drm_panel *panel)
{
 struct truly_nt35597 *ctx = panel_to_ctx(panel);
 int ret = 0;

 if (!ctx->prepared)
  return 0;

 ctx->dsi[0]->mode_flags = 0;
 ctx->dsi[1]->mode_flags = 0;

 ret = truly_dcs_write(panel, MIPI_DCS_SET_DISPLAY_OFF);
 if (ret < 0) {
  DRM_DEV_ERROR(ctx->dev,
   "set_display_off cmd failed ret = %d\n",
   ret);
 }


 msleep(120);

 ret = truly_dcs_write(panel, MIPI_DCS_ENTER_SLEEP_MODE);
 if (ret < 0) {
  DRM_DEV_ERROR(ctx->dev,
   "enter_sleep cmd failed ret = %d\n", ret);
 }

 ret = truly_nt35597_power_off(ctx);
 if (ret < 0)
  DRM_DEV_ERROR(ctx->dev, "power_off failed ret = %d\n", ret);

 ctx->prepared = 0;
 return ret;
}
