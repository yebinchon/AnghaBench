
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int,size_t,size_t) ;
 int memcpy (int*,void const*,int) ;
 int spi_write_then_read (struct spi_device*,int*,int,void*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int ili9322_regmap_spi_read(void *context, const void *reg,
       size_t reg_size, void *val, size_t val_size)
{
 struct device *dev = context;
 struct spi_device *spi = to_spi_device(dev);
 u8 buf[1];


 memcpy(buf, reg, 1);
 dev_dbg(dev, "READ: %02x reg size = %zu, val size = %zu\n",
  buf[0], reg_size, val_size);
 buf[0] |= 0x80;

 return spi_write_then_read(spi, buf, 1, val, 1);
}
