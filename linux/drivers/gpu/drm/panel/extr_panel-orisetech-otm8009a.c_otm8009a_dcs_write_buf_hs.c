
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct otm8009a {int dev; } ;
struct mipi_dsi_device {int mode_flags; } ;


 int MIPI_DSI_MODE_LPM ;
 int otm8009a_dcs_write_buf (struct otm8009a*,void const*,size_t) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static void otm8009a_dcs_write_buf_hs(struct otm8009a *ctx, const void *data,
          size_t len)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);


 dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;

 otm8009a_dcs_write_buf(ctx, data, len);


 dsi->mode_flags |= MIPI_DSI_MODE_LPM;
}
