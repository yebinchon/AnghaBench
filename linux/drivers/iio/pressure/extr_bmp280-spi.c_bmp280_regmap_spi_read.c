
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int spi_write_then_read (struct spi_device*,void const*,size_t,void*,size_t) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int bmp280_regmap_spi_read(void *context, const void *reg,
                                  size_t reg_size, void *val, size_t val_size)
{
 struct device *dev = context;
 struct spi_device *spi = to_spi_device(dev);

 return spi_write_then_read(spi, reg, reg_size, val, val_size);
}
