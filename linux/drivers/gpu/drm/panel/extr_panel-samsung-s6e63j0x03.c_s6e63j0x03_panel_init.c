
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s6e63j0x03 {int dev; } ;
struct mipi_dsi_device {int dummy; } ;
struct TYPE_2__ {int hdisplay; scalar_t__ vdisplay; } ;


 int FIRST_COLUMN ;
 TYPE_1__ default_mode ;
 int mipi_dsi_dcs_exit_sleep_mode (struct mipi_dsi_device*) ;
 int mipi_dsi_dcs_set_column_address (struct mipi_dsi_device*,int,int) ;
 int mipi_dsi_dcs_set_page_address (struct mipi_dsi_device*,int ,scalar_t__) ;
 int s6e63j0x03_apply_mtp_key (struct s6e63j0x03*,int) ;
 int s6e63j0x03_dcs_write_seq_static (struct s6e63j0x03*,int,int,...) ;
 int s6e63j0x03_enable_lv2_command (struct s6e63j0x03*) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int s6e63j0x03_panel_init(struct s6e63j0x03 *ctx)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int ret;

 ret = s6e63j0x03_enable_lv2_command(ctx);
 if (ret < 0)
  return ret;

 ret = s6e63j0x03_apply_mtp_key(ctx, 1);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xf2, 0x1c, 0x28);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xb5, 0x00, 0x02, 0x00);
 if (ret < 0)
  return ret;


 ret = mipi_dsi_dcs_set_column_address(dsi, FIRST_COLUMN,
  default_mode.hdisplay - 1 + FIRST_COLUMN);
 if (ret < 0)
  return ret;

 ret = mipi_dsi_dcs_set_page_address(dsi, 0, default_mode.vdisplay - 1);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xf8, 0x08, 0x08, 0x08, 0x17,
  0x00, 0x2a, 0x02, 0x26, 0x00, 0x00, 0x02, 0x00, 0x00);
 if (ret < 0)
  return ret;

 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xf7, 0x02);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xb0, 0x01);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xe2, 0x0f);
 if (ret < 0)
  return ret;


 ret = s6e63j0x03_dcs_write_seq_static(ctx, 0xb0, 0x00);
 if (ret < 0)
  return ret;

 ret = mipi_dsi_dcs_exit_sleep_mode(dsi);
 if (ret < 0)
  return ret;

 ret = s6e63j0x03_apply_mtp_key(ctx, 0);
 if (ret < 0)
  return ret;

 return 0;
}
