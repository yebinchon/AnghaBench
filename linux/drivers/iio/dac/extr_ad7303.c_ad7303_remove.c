
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad7303_state {scalar_t__ vdd_reg; scalar_t__ vref_reg; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct ad7303_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (scalar_t__) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad7303_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad7303_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 if (st->vref_reg)
  regulator_disable(st->vref_reg);
 regulator_disable(st->vdd_reg);

 return 0;
}
