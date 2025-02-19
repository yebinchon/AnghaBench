
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct bme680_spi_bus_context {struct spi_device* spi; } ;


 int bme680_regmap_spi_select_page (struct bme680_spi_bus_context*,int) ;
 int spi_write_then_read (struct spi_device*,int*,int,void*,size_t) ;

__attribute__((used)) static int bme680_regmap_spi_read(void *context, const void *reg,
      size_t reg_size, void *val, size_t val_size)
{
 struct bme680_spi_bus_context *ctx = context;
 struct spi_device *spi = ctx->spi;
 int ret;
 u8 addr = *(const u8 *)reg;

 ret = bme680_regmap_spi_select_page(ctx, addr);
 if (ret)
  return ret;

 addr |= 0x80;

 return spi_write_then_read(spi, &addr, 1, val, val_size);
}
