
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad7124_state {int * vref; int mclk; } ;


 int ARRAY_SIZE (int *) ;
 int IS_ERR_OR_NULL (int ) ;
 int ad_sd_cleanup_buffer_and_trigger (struct iio_dev*) ;
 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad7124_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad7124_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad7124_state *st = iio_priv(indio_dev);
 int i;

 iio_device_unregister(indio_dev);
 ad_sd_cleanup_buffer_and_trigger(indio_dev);
 clk_disable_unprepare(st->mclk);

 for (i = ARRAY_SIZE(st->vref) - 1; i >= 0; i--) {
  if (!IS_ERR_OR_NULL(st->vref[i]))
   regulator_disable(st->vref[i]);
 }

 return 0;
}
