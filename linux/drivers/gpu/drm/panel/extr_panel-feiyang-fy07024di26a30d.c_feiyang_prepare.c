
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_device {int dummy; } ;
struct feiyang_init_cmd {int data; } ;
struct feiyang {int reset; int avdd; int dvdd; struct mipi_dsi_device* dsi; } ;
struct drm_panel {int dummy; } ;


 unsigned int ARRAY_SIZE (struct feiyang_init_cmd*) ;
 int FEIYANG_INIT_CMD_LEN ;
 struct feiyang_init_cmd* feiyang_init_cmds ;
 int gpiod_set_value (int ,int) ;
 int mipi_dsi_dcs_write_buffer (struct mipi_dsi_device*,int ,int ) ;
 int msleep (int) ;
 struct feiyang* panel_to_feiyang (struct drm_panel*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int feiyang_prepare(struct drm_panel *panel)
{
 struct feiyang *ctx = panel_to_feiyang(panel);
 struct mipi_dsi_device *dsi = ctx->dsi;
 unsigned int i;
 int ret;

 ret = regulator_enable(ctx->dvdd);
 if (ret)
  return ret;


 msleep(10);

 ret = regulator_enable(ctx->avdd);
 if (ret)
  return ret;


 msleep(20);

 gpiod_set_value(ctx->reset, 0);





 msleep(20);

 gpiod_set_value(ctx->reset, 1);


 msleep(200);

 for (i = 0; i < ARRAY_SIZE(feiyang_init_cmds); i++) {
  const struct feiyang_init_cmd *cmd =
      &feiyang_init_cmds[i];

  ret = mipi_dsi_dcs_write_buffer(dsi, cmd->data,
      FEIYANG_INIT_CMD_LEN);
  if (ret < 0)
   return ret;
 }

 return 0;
}
