
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s6e63m0 {int error; int dev; } ;


 int const DATA_MASK ;
 int DRM_DEV_DEBUG (int ,char*,int,int const*) ;
 int DRM_DEV_ERROR (int ,char*,int,int,int const*) ;
 int s6e63m0_spi_write_word (struct s6e63m0*,int const) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void s6e63m0_dcs_write(struct s6e63m0 *ctx, const u8 *data, size_t len)
{
 int ret = 0;

 if (ctx->error < 0 || len == 0)
  return;

 DRM_DEV_DEBUG(ctx->dev, "writing dcs seq: %*ph\n", (int)len, data);
 ret = s6e63m0_spi_write_word(ctx, *data);

 while (!ret && --len) {
  ++data;
  ret = s6e63m0_spi_write_word(ctx, *data | DATA_MASK);
 }

 if (ret) {
  DRM_DEV_ERROR(ctx->dev, "error %d writing dcs seq: %*ph\n", ret,
         (int)len, data);
  ctx->error = ret;
 }

 usleep_range(300, 310);
}
