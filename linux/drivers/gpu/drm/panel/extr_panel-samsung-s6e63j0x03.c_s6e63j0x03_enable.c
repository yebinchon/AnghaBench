
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s6e63j0x03 {TYPE_2__* bl_dev; int dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct drm_panel {int dummy; } ;
struct TYPE_3__ {int power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;


 int FB_BLANK_UNBLANK ;
 int MIPI_DCS_SET_ADDRESS_MODE ;
 int MIPI_DCS_WRITE_CONTROL_DISPLAY ;
 int MIPI_DCS_WRITE_POWER_SAVE ;
 int MIPI_DSI_DCS_TEAR_MODE_VBLANK ;
 int mipi_dsi_dcs_set_display_brightness (struct mipi_dsi_device*,int) ;
 int mipi_dsi_dcs_set_display_on (struct mipi_dsi_device*) ;
 int mipi_dsi_dcs_set_tear_on (struct mipi_dsi_device*,int ) ;
 int msleep (int) ;
 struct s6e63j0x03* panel_to_s6e63j0x03 (struct drm_panel*) ;
 int s6e63j0x03_apply_mtp_key (struct s6e63j0x03*,int) ;
 int s6e63j0x03_dcs_write_seq_static (struct s6e63j0x03*,int,int,...) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int s6e63j0x03_enable(struct drm_panel *panel)
{
 struct s6e63j0x03 *ctx = panel_to_s6e63j0x03(panel);
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int ret;

 msleep(120);

 ret = s6e63j0x03_apply_mtp_key(ctx, 1);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xb1, 0x00, 0x09);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx,
  MIPI_DCS_SET_ADDRESS_MODE, 0x40);
 if (ret < 0)
  return ret;


 ret = mipi_dsi_dcs_set_display_brightness(dsi, 0x00ff);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx,
  MIPI_DCS_WRITE_CONTROL_DISPLAY, 0x20);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx,
  MIPI_DCS_WRITE_POWER_SAVE, 0x00);
 if (ret < 0)
  return ret;

 ret = mipi_dsi_dcs_set_tear_on(dsi, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
 if (ret < 0)
  return ret;

 ret = s6e63j0x03_apply_mtp_key(ctx, 0);
 if (ret < 0)
  return ret;

 ret = mipi_dsi_dcs_set_display_on(dsi);
 if (ret < 0)
  return ret;

 ctx->bl_dev->props.power = FB_BLANK_UNBLANK;

 return 0;
}
