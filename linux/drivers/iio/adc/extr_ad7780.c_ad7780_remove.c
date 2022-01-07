
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad7780_state {int reg; } ;


 int ad_sd_cleanup_buffer_and_trigger (struct iio_dev*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad7780_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad7780_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad7780_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 ad_sd_cleanup_buffer_and_trigger(indio_dev);

 regulator_disable(st->reg);

 return 0;
}
