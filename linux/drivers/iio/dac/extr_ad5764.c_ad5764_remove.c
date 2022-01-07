
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad5764_state {int vref_reg; TYPE_1__* chip_info; } ;
struct TYPE_2__ {scalar_t__ int_vref; } ;


 int ARRAY_SIZE (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ad5764_state* iio_priv (struct iio_dev*) ;
 int regulator_bulk_disable (int ,int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad5764_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad5764_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 if (st->chip_info->int_vref == 0)
  regulator_bulk_disable(ARRAY_SIZE(st->vref_reg), st->vref_reg);

 return 0;
}
