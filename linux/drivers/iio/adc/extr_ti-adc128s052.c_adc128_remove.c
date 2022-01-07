
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct adc128 {int reg; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct adc128* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adc128_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct adc128 *adc = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 regulator_disable(adc->reg);

 return 0;
}
