
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rm68200 {int dev; } ;
struct mipi_dsi_device {int dummy; } ;


 int DRM_ERROR_RATELIMITED (char*,int) ;
 int mipi_dsi_dcs_write (struct mipi_dsi_device*,int ,int *,int) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static void rm68200_dcs_write_cmd(struct rm68200 *ctx, u8 cmd, u8 value)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int err;

 err = mipi_dsi_dcs_write(dsi, cmd, &value, 1);
 if (err < 0)
  DRM_ERROR_RATELIMITED("MIPI DSI DCS write failed: %d\n", err);
}
