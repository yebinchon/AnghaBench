
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e8aa0 {scalar_t__ error; int dev; } ;
struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int dev_err (int ,char*,scalar_t__,int,void const*) ;
 scalar_t__ mipi_dsi_dcs_write_buffer (struct mipi_dsi_device*,void const*,size_t) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static void s6e8aa0_dcs_write(struct s6e8aa0 *ctx, const void *data, size_t len)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 ssize_t ret;

 if (ctx->error < 0)
  return;

 ret = mipi_dsi_dcs_write_buffer(dsi, data, len);
 if (ret < 0) {
  dev_err(ctx->dev, "error %zd writing dcs seq: %*ph\n", ret,
   (int)len, data);
  ctx->error = ret;
 }
}
