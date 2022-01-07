
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adis16260 {int adis; } ;


 int adis16260_stop_device (struct iio_dev*) ;
 int adis_cleanup_buffer_and_trigger (int *,struct iio_dev*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct adis16260* iio_priv (struct iio_dev*) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adis16260_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct adis16260 *adis16260 = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 adis16260_stop_device(indio_dev);
 adis_cleanup_buffer_and_trigger(&adis16260->adis, indio_dev);

 return 0;
}
