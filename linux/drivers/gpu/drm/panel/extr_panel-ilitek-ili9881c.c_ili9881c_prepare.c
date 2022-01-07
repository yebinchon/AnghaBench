
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int cmd; } ;
struct TYPE_4__ {TYPE_1__ cmd; int page; } ;
struct ili9881c_instr {scalar_t__ op; TYPE_2__ arg; } ;
struct ili9881c {int dsi; int reset; int power; } ;
struct drm_panel {int dummy; } ;


 unsigned int ARRAY_SIZE (struct ili9881c_instr*) ;
 scalar_t__ ILI9881C_COMMAND ;
 scalar_t__ ILI9881C_SWITCH_PAGE ;
 int MIPI_DSI_DCS_TEAR_MODE_VBLANK ;
 int gpiod_set_value (int ,int) ;
 struct ili9881c_instr* ili9881c_init ;
 int ili9881c_send_cmd_data (struct ili9881c*,int ,int ) ;
 int ili9881c_switch_page (struct ili9881c*,int ) ;
 int mipi_dsi_dcs_exit_sleep_mode (int ) ;
 int mipi_dsi_dcs_set_tear_on (int ,int ) ;
 int msleep (int) ;
 struct ili9881c* panel_to_ili9881c (struct drm_panel*) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int ili9881c_prepare(struct drm_panel *panel)
{
 struct ili9881c *ctx = panel_to_ili9881c(panel);
 unsigned int i;
 int ret;


 ret = regulator_enable(ctx->power);
 if (ret)
  return ret;
 msleep(5);


 gpiod_set_value(ctx->reset, 1);
 msleep(20);

 gpiod_set_value(ctx->reset, 0);
 msleep(20);

 for (i = 0; i < ARRAY_SIZE(ili9881c_init); i++) {
  const struct ili9881c_instr *instr = &ili9881c_init[i];

  if (instr->op == ILI9881C_SWITCH_PAGE)
   ret = ili9881c_switch_page(ctx, instr->arg.page);
  else if (instr->op == ILI9881C_COMMAND)
   ret = ili9881c_send_cmd_data(ctx, instr->arg.cmd.cmd,
            instr->arg.cmd.data);

  if (ret)
   return ret;
 }

 ret = ili9881c_switch_page(ctx, 0);
 if (ret)
  return ret;

 ret = mipi_dsi_dcs_set_tear_on(ctx->dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
 if (ret)
  return ret;

 ret = mipi_dsi_dcs_exit_sleep_mode(ctx->dsi);
 if (ret)
  return ret;

 return 0;
}
