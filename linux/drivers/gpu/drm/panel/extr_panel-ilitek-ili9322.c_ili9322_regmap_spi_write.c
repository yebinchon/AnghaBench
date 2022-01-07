
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_device {int dummy; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int,int) ;
 int memcpy (int*,void const*,int) ;
 int spi_write_then_read (struct spi_device*,int*,int,int *,int ) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int ili9322_regmap_spi_write(void *context, const void *data,
        size_t count)
{
 struct device *dev = context;
 struct spi_device *spi = to_spi_device(dev);
 u8 buf[2];


 memcpy(buf, data, 2);
 buf[0] &= ~0x80;

 dev_dbg(dev, "WRITE: %02x %02x\n", buf[0], buf[1]);
 return spi_write_then_read(spi, buf, 2, ((void*)0), 0);
}
