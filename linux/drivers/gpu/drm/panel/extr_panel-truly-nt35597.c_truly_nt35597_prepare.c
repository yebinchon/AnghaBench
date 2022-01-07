
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct truly_nt35597 {int prepared; int dev; struct nt35597_config* config; TYPE_1__** dsi; } ;
struct nt35597_config {int num_on_cmds; struct cmd_set* panel_on_cmds; } ;
struct drm_panel {int dummy; } ;
struct cmd_set {int commands; int size; } ;
struct TYPE_2__ {int mode_flags; } ;


 int DRM_DEV_ERROR (int ,char*,...) ;
 int MIPI_DCS_EXIT_SLEEP_MODE ;
 int MIPI_DCS_SET_DISPLAY_ON ;
 int MIPI_DSI_MODE_LPM ;
 int msleep (int) ;
 struct truly_nt35597* panel_to_ctx (struct drm_panel*) ;
 int truly_35597_power_on (struct truly_nt35597*) ;
 int truly_dcs_write (struct drm_panel*,int ) ;
 int truly_dcs_write_buf (struct drm_panel*,int ,int ) ;
 scalar_t__ truly_nt35597_power_off (struct truly_nt35597*) ;

__attribute__((used)) static int truly_nt35597_prepare(struct drm_panel *panel)
{
 struct truly_nt35597 *ctx = panel_to_ctx(panel);
 int ret;
 int i;
 const struct cmd_set *panel_on_cmds;
 const struct nt35597_config *config;
 u32 num_cmds;

 if (ctx->prepared)
  return 0;

 ret = truly_35597_power_on(ctx);
 if (ret < 0)
  return ret;

 ctx->dsi[0]->mode_flags |= MIPI_DSI_MODE_LPM;
 ctx->dsi[1]->mode_flags |= MIPI_DSI_MODE_LPM;

 config = ctx->config;
 panel_on_cmds = config->panel_on_cmds;
 num_cmds = config->num_on_cmds;

 for (i = 0; i < num_cmds; i++) {
  ret = truly_dcs_write_buf(panel,
    panel_on_cmds[i].size,
     panel_on_cmds[i].commands);
  if (ret < 0) {
   DRM_DEV_ERROR(ctx->dev,
    "cmd set tx failed i = %d ret = %d\n",
     i, ret);
   goto power_off;
  }
 }

 ret = truly_dcs_write(panel, MIPI_DCS_EXIT_SLEEP_MODE);
 if (ret < 0) {
  DRM_DEV_ERROR(ctx->dev,
   "exit_sleep_mode cmd failed ret = %d\n",
   ret);
  goto power_off;
 }


 msleep(120);

 ret = truly_dcs_write(panel, MIPI_DCS_SET_DISPLAY_ON);
 if (ret < 0) {
  DRM_DEV_ERROR(ctx->dev,
   "set_display_on cmd failed ret = %d\n", ret);
  goto power_off;
 }


 msleep(120);

 ctx->prepared = 1;

 return 0;

power_off:
 if (truly_nt35597_power_off(ctx))
  DRM_DEV_ERROR(ctx->dev, "power_off failed\n");
 return ret;
}
