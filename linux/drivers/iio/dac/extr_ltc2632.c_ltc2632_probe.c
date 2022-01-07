
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct ltc2632_state {int vref_mv; int * vref_reg; struct spi_device* spi_dev; } ;
struct ltc2632_chip_info {int vref_mv; int channels; } ;
struct TYPE_4__ {int * parent; } ;
struct iio_dev {int num_channels; int channels; int modes; int * info; int name; TYPE_1__ dev; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; scalar_t__ driver_data; } ;


 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int *) ;
 int LTC2632_CMD_EXTERNAL_REFER ;
 int LTC2632_CMD_INTERNAL_REFER ;
 int LTC2632_DAC_CHANNELS ;
 int PTR_ERR (int *) ;
 int dev_err (int *,char*,...) ;
 TYPE_3__* dev_of_node (int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int * devm_regulator_get_optional (int *,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ltc2632_state* iio_priv (struct iio_dev*) ;
 int ltc2632_info ;
 int ltc2632_spi_write (struct spi_device*,int ,int ,int ,int ) ;
 int regulator_enable (int *) ;
 int regulator_get_voltage (int *) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ltc2632_probe(struct spi_device *spi)
{
 struct ltc2632_state *st;
 struct iio_dev *indio_dev;
 struct ltc2632_chip_info *chip_info;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);

 spi_set_drvdata(spi, indio_dev);
 st->spi_dev = spi;

 chip_info = (struct ltc2632_chip_info *)
   spi_get_device_id(spi)->driver_data;

 st->vref_reg = devm_regulator_get_optional(&spi->dev, "vref");
 if (PTR_ERR(st->vref_reg) == -ENODEV) {

  st->vref_reg = ((void*)0);
  st->vref_mv = chip_info->vref_mv;

  ret = ltc2632_spi_write(spi, LTC2632_CMD_INTERNAL_REFER,
    0, 0, 0);
  if (ret) {
   dev_err(&spi->dev,
    "Set internal reference command failed, %d\n",
    ret);
   return ret;
  }
 } else if (IS_ERR(st->vref_reg)) {
  dev_err(&spi->dev,
    "Error getting voltage reference regulator\n");
  return PTR_ERR(st->vref_reg);
 } else {

  ret = regulator_enable(st->vref_reg);
  if (ret) {
   dev_err(&spi->dev,
    "enable reference regulator failed, %d\n",
    ret);
   return ret;
  }
  st->vref_mv = regulator_get_voltage(st->vref_reg) / 1000;

  ret = ltc2632_spi_write(spi, LTC2632_CMD_EXTERNAL_REFER,
    0, 0, 0);
  if (ret) {
   dev_err(&spi->dev,
    "Set external reference command failed, %d\n",
    ret);
   return ret;
  }
 }

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = dev_of_node(&spi->dev) ? dev_of_node(&spi->dev)->name
       : spi_get_device_id(spi)->name;
 indio_dev->info = &ltc2632_info;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = chip_info->channels;
 indio_dev->num_channels = LTC2632_DAC_CHANNELS;

 return iio_device_register(indio_dev);
}
