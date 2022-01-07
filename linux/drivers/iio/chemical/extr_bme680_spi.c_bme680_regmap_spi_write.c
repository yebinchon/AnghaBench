
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct bme680_spi_bus_context {struct spi_device* spi; } ;


 int bme680_regmap_spi_select_page (struct bme680_spi_bus_context*,int) ;
 int memcpy (int*,void const*,int) ;
 int spi_write (struct spi_device*,int*,int) ;

__attribute__((used)) static int bme680_regmap_spi_write(void *context, const void *data,
       size_t count)
{
 struct bme680_spi_bus_context *ctx = context;
 struct spi_device *spi = ctx->spi;
 int ret;
 u8 buf[2];

 memcpy(buf, data, 2);

 ret = bme680_regmap_spi_select_page(ctx, buf[0]);
 if (ret)
  return ret;





 buf[0] &= ~0x80;

 return spi_write(spi, buf, 2);
}
