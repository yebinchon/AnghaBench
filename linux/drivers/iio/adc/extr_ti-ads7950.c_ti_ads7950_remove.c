
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_ads7950_state {int slock; int reg; int chip; } ;
struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int gpiochip_remove (int *) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ti_ads7950_state* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int mutex_destroy (int *) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ti_ads7950_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ti_ads7950_state *st = iio_priv(indio_dev);

 gpiochip_remove(&st->chip);
 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 regulator_disable(st->reg);
 mutex_destroy(&st->slock);

 return 0;
}
