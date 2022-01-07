
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad5761_state {int vref_reg; } ;


 int IS_ERR_OR_NULL (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad5761_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad5761_remove(struct spi_device *spi)
{
 struct iio_dev *iio_dev = spi_get_drvdata(spi);
 struct ad5761_state *st = iio_priv(iio_dev);

 iio_device_unregister(iio_dev);

 if (!IS_ERR_OR_NULL(st->vref_reg))
  regulator_disable(st->vref_reg);

 return 0;
}
