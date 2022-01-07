
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct adxl34x {int dummy; } ;


 int adxl34x_remove (struct adxl34x*) ;
 struct adxl34x* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adxl34x_spi_remove(struct spi_device *spi)
{
 struct adxl34x *ac = spi_get_drvdata(spi);

 return adxl34x_remove(ac);
}
