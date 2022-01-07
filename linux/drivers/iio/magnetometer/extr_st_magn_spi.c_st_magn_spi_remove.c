
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 struct iio_dev* spi_get_drvdata (struct spi_device*) ;
 int st_magn_common_remove (struct iio_dev*) ;

__attribute__((used)) static int st_magn_spi_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 st_magn_common_remove(indio_dev);

 return 0;
}
