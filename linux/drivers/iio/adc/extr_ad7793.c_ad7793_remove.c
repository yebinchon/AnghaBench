
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ad7793_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct iio_dev {int dummy; } ;
struct ad7793_state {int reg; } ;
struct ad7793_platform_data {scalar_t__ refsel; } ;


 scalar_t__ AD7793_REFSEL_INTERNAL ;
 int ad_sd_cleanup_buffer_and_trigger (struct iio_dev*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad7793_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad7793_remove(struct spi_device *spi)
{
 const struct ad7793_platform_data *pdata = spi->dev.platform_data;
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad7793_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 ad_sd_cleanup_buffer_and_trigger(indio_dev);

 if (pdata->refsel != AD7793_REFSEL_INTERNAL)
  regulator_disable(st->reg);

 return 0;
}
