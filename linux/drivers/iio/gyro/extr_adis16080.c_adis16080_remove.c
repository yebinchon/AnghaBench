
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int iio_device_unregister (int ) ;
 int spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adis16080_remove(struct spi_device *spi)
{
 iio_device_unregister(spi_get_drvdata(spi));
 return 0;
}
