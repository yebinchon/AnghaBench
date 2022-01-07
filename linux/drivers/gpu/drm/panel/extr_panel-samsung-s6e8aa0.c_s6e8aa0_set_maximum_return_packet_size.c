
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s6e8aa0 {int error; int dev; } ;
struct mipi_dsi_device {int dummy; } ;


 int dev_err (int ,char*,int,int ) ;
 int mipi_dsi_set_maximum_return_packet_size (struct mipi_dsi_device*,int ) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static void s6e8aa0_set_maximum_return_packet_size(struct s6e8aa0 *ctx,
         u16 size)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 int ret;

 if (ctx->error < 0)
  return;

 ret = mipi_dsi_set_maximum_return_packet_size(dsi, size);
 if (ret < 0) {
  dev_err(ctx->dev,
   "error %d setting maximum return packet size to %d\n",
   ret, size);
  ctx->error = ret;
 }
}
