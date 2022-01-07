
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct ad5624r_state {int vref_mv; int reg; TYPE_3__* chip_info; struct spi_device* us; } ;
struct TYPE_6__ {int int_vref_mv; int channels; } ;
struct TYPE_5__ {size_t driver_data; int name; } ;


 int AD5624R_CMD_INTERNAL_REFER_SETUP ;
 int AD5624R_DAC_CHANNELS ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR (int ) ;
 TYPE_3__* ad5624r_chip_info_tbl ;
 int ad5624r_info ;
 int ad5624r_spi_write (struct spi_device*,int ,int ,int,int) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_regulator_get (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad5624r_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad5624r_probe(struct spi_device *spi)
{
 struct ad5624r_state *st;
 struct iio_dev *indio_dev;
 int ret, voltage_uv = 0;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;
 st = iio_priv(indio_dev);
 st->reg = devm_regulator_get(&spi->dev, "vcc");
 if (!IS_ERR(st->reg)) {
  ret = regulator_enable(st->reg);
  if (ret)
   return ret;

  ret = regulator_get_voltage(st->reg);
  if (ret < 0)
   goto error_disable_reg;

  voltage_uv = ret;
 }

 spi_set_drvdata(spi, indio_dev);
 st->chip_info =
  &ad5624r_chip_info_tbl[spi_get_device_id(spi)->driver_data];

 if (voltage_uv)
  st->vref_mv = voltage_uv / 1000;
 else
  st->vref_mv = st->chip_info->int_vref_mv;

 st->us = spi;

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->info = &ad5624r_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = st->chip_info->channels;
 indio_dev->num_channels = AD5624R_DAC_CHANNELS;

 ret = ad5624r_spi_write(spi, AD5624R_CMD_INTERNAL_REFER_SETUP, 0,
    !!voltage_uv, 16);
 if (ret)
  goto error_disable_reg;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_disable_reg;

 return 0;

error_disable_reg:
 if (!IS_ERR(st->reg))
  regulator_disable(st->reg);

 return ret;
}
