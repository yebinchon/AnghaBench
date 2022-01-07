
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e3ha2 {int dev; } ;
struct mipi_dsi_device {int dummy; } ;


 int mipi_dsi_dcs_write_buffer (struct mipi_dsi_device*,void const*,size_t) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static int s6e3ha2_dcs_write(struct s6e3ha2 *ctx, const void *data, size_t len)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);

 return mipi_dsi_dcs_write_buffer(dsi, data, len);
}
