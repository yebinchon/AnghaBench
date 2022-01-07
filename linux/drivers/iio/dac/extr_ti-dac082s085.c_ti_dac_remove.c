
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_dac_chip {int vref; int lock; } ;
struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct ti_dac_chip* iio_priv (struct iio_dev*) ;
 int mutex_destroy (int *) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ti_dac_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ti_dac_chip *ti_dac = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 mutex_destroy(&ti_dac->lock);
 regulator_disable(ti_dac->vref);

 return 0;
}
