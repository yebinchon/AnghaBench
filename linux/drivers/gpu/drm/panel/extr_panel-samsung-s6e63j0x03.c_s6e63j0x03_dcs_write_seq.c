
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63j0x03 {int dev; } ;
struct mipi_dsi_device {int dummy; } ;
typedef int ssize_t ;


 int mipi_dsi_dcs_write_buffer (struct mipi_dsi_device*,void const*,size_t) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static inline ssize_t s6e63j0x03_dcs_write_seq(struct s6e63j0x03 *ctx,
     const void *seq, size_t len)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);

 return mipi_dsi_dcs_write_buffer(dsi, seq, len);
}
