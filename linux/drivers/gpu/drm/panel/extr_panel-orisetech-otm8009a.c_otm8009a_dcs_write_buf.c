
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm8009a {int dev; } ;
struct mipi_dsi_device {int dummy; } ;


 int DRM_WARN (char*) ;
 scalar_t__ mipi_dsi_dcs_write_buffer (struct mipi_dsi_device*,void const*,size_t) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static void otm8009a_dcs_write_buf(struct otm8009a *ctx, const void *data,
       size_t len)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);

 if (mipi_dsi_dcs_write_buffer(dsi, data, len) < 0)
  DRM_WARN("mipi dsi dcs write buffer failed\n");
}
