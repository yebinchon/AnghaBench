
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ld9040 {int error; int dev; } ;


 int dev_dbg (int ,char*,int,int const*) ;
 int dev_err (int ,char*,int,int,int const*) ;
 int ld9040_spi_write_word (struct ld9040*,int const) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ld9040_dcs_write(struct ld9040 *ctx, const u8 *data, size_t len)
{
 int ret = 0;

 if (ctx->error < 0 || len == 0)
  return;

 dev_dbg(ctx->dev, "writing dcs seq: %*ph\n", (int)len, data);
 ret = ld9040_spi_write_word(ctx, *data);

 while (!ret && --len) {
  ++data;
  ret = ld9040_spi_write_word(ctx, *data | 0x100);
 }

 if (ret) {
  dev_err(ctx->dev, "error %d writing dcs seq: %*ph\n", ret,
   (int)len, data);
  ctx->error = ret;
 }

 usleep_range(300, 310);
}
