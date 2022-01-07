
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tc358764 {scalar_t__ error; int dev; } ;
struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int data ;


 scalar_t__ mipi_dsi_generic_write (struct mipi_dsi_device*,int*,int) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static void tc358764_write(struct tc358764 *ctx, u16 addr, u32 val)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 ssize_t ret;
 u8 data[6];

 if (ctx->error)
  return;

 data[0] = addr;
 data[1] = addr >> 8;
 data[2] = val;
 data[3] = val >> 8;
 data[4] = val >> 16;
 data[5] = val >> 24;

 ret = mipi_dsi_generic_write(dsi, data, sizeof(data));
 if (ret < 0)
  ctx->error = ret;
}
