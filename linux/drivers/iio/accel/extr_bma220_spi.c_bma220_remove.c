
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int bma220_deinit (struct spi_device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int bma220_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);

 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);

 return bma220_deinit(spi);
}
