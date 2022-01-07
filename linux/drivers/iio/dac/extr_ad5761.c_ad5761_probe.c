
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int num_channels; int name; int * channels; int modes; int * info; TYPE_1__ dev; } ;
struct ad5761_state {int vref_reg; struct spi_device* spi; } ;
struct ad5761_platform_data {int voltage_range; } ;
struct ad5761_chip_info {int channel; } ;
typedef enum ad5761_voltage_range { ____Placeholder_ad5761_voltage_range } ad5761_voltage_range ;
struct TYPE_4__ {size_t driver_data; int name; } ;


 int AD5761_VOLTAGE_RANGE_0V_5V ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR_OR_NULL (int ) ;
 struct ad5761_chip_info* ad5761_chip_infos ;
 int ad5761_get_vref (struct ad5761_state*,struct ad5761_chip_info const*) ;
 int ad5761_info ;
 int ad5761_spi_set_range (struct ad5761_state*,int) ;
 struct ad5761_platform_data* dev_get_platdata (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad5761_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad5761_probe(struct spi_device *spi)
{
 struct iio_dev *iio_dev;
 struct ad5761_state *st;
 int ret;
 const struct ad5761_chip_info *chip_info =
  &ad5761_chip_infos[spi_get_device_id(spi)->driver_data];
 enum ad5761_voltage_range voltage_range = AD5761_VOLTAGE_RANGE_0V_5V;
 struct ad5761_platform_data *pdata = dev_get_platdata(&spi->dev);

 iio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!iio_dev)
  return -ENOMEM;

 st = iio_priv(iio_dev);

 st->spi = spi;
 spi_set_drvdata(spi, iio_dev);

 ret = ad5761_get_vref(st, chip_info);
 if (ret)
  return ret;

 if (pdata)
  voltage_range = pdata->voltage_range;

 ret = ad5761_spi_set_range(st, voltage_range);
 if (ret)
  goto disable_regulator_err;

 iio_dev->dev.parent = &spi->dev;
 iio_dev->info = &ad5761_info;
 iio_dev->modes = INDIO_DIRECT_MODE;
 iio_dev->channels = &chip_info->channel;
 iio_dev->num_channels = 1;
 iio_dev->name = spi_get_device_id(st->spi)->name;
 ret = iio_device_register(iio_dev);
 if (ret)
  goto disable_regulator_err;

 return 0;

disable_regulator_err:
 if (!IS_ERR_OR_NULL(st->vref_reg))
  regulator_disable(st->vref_reg);

 return ret;
}
