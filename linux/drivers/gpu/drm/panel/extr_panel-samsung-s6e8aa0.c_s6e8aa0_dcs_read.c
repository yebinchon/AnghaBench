
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6e8aa0 {int error; int dev; } ;
struct mipi_dsi_device {int dummy; } ;


 int dev_err (int ,char*,int,int ) ;
 int mipi_dsi_dcs_read (struct mipi_dsi_device*,int ,void*,size_t) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int s6e8aa0_dcs_read(struct s6e8aa0 *ctx, u8 cmd, void *data, size_t len)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int ret;

 if (ctx->error < 0)
  return ctx->error;

 ret = mipi_dsi_dcs_read(dsi, cmd, data, len);
 if (ret < 0) {
  dev_err(ctx->dev, "error %d reading dcs seq(%#x)\n", ret, cmd);
  ctx->error = ret;
 }

 return ret;
}
