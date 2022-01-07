
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct ad5449 {int vref_reg; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int num_channels; } ;


 int iio_device_unregister (struct iio_dev*) ;
 struct ad5449* iio_priv (struct iio_dev*) ;
 int regulator_bulk_disable (int ,int ) ;
 struct iio_dev* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ad5449_spi_remove(struct spi_device *spi)
{
 struct iio_dev *indio_dev = spi_get_drvdata(spi);
 struct ad5449 *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 regulator_bulk_disable(st->chip_info->num_channels, st->vref_reg);

 return 0;
}
