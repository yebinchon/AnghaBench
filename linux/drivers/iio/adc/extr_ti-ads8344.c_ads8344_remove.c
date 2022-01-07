
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ads8344 {int reg; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct ads8344* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ads8344_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ads8344 *adc = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 regulator_disable(adc->reg);

 return 0;
}
