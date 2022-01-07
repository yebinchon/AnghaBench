
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad7949_adc_chip {int vref; int lock; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct ad7949_adc_chip* iio_priv (struct iio_dev*) ;
 int mutex_destroy (int *) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad7949_spi_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad7949_adc_chip *ad7949_adc = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 mutex_destroy(&ad7949_adc->lock);
 regulator_disable(ad7949_adc->vref);

 return 0;
}
