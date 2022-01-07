
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct device {int dummy; } ;
typedef int buf ;


 unsigned char ADXL34X_WRITECMD (unsigned char) ;
 int spi_write (struct spi_device*,unsigned char*,int) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int adxl34x_spi_write(struct device *dev,
        unsigned char reg, unsigned char val)
{
 struct spi_device *spi = to_spi_device(dev);
 unsigned char buf[2];

 buf[0] = ADXL34X_WRITECMD(reg);
 buf[1] = val;

 return spi_write(spi, buf, sizeof(buf));
}
