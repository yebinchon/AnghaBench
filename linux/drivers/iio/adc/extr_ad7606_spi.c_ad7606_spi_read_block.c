
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct device {int dummy; } ;
typedef int __be16 ;


 unsigned short be16_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int spi_read (struct spi_device*,void*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int ad7606_spi_read_block(struct device *dev,
     int count, void *buf)
{
 struct spi_device *spi = to_spi_device(dev);
 int i, ret;
 unsigned short *data = buf;
 __be16 *bdata = buf;

 ret = spi_read(spi, buf, count * 2);
 if (ret < 0) {
  dev_err(&spi->dev, "SPI read error\n");
  return ret;
 }

 for (i = 0; i < count; i++)
  data[i] = be16_to_cpu(bdata[i]);

 return 0;
}
