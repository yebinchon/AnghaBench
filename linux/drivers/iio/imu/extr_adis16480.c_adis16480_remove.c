
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adis16480 {int ext_clk; int adis; } ;


 int adis16480_stop_device (struct iio_dev*) ;
 int adis_cleanup_buffer_and_trigger (int *,struct iio_dev*) ;
 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct adis16480* iio_priv (struct iio_dev*) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adis16480_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct adis16480 *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 adis16480_stop_device(indio_dev);

 adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
 clk_disable_unprepare(st->ext_clk);

 return 0;
}
