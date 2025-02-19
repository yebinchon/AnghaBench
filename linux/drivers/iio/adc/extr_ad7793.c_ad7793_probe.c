
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int of_node; struct ad7793_platform_data* platform_data; } ;
struct spi_device {TYPE_3__ dev; int irq; } ;
struct TYPE_7__ {int of_node; TYPE_3__* parent; } ;
struct iio_dev {int info; int num_channels; int channels; int modes; int name; TYPE_1__ dev; } ;
struct ad7793_state {int reg; TYPE_6__* chip_info; int sd; } ;
struct ad7793_platform_data {scalar_t__ refsel; } ;
struct TYPE_10__ {int iio_info; int num_channels; int channels; } ;
struct TYPE_8__ {size_t driver_data; int name; } ;


 scalar_t__ AD7793_REFSEL_INTERNAL ;
 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_6__* ad7793_chip_info_tbl ;
 int ad7793_setup (struct iio_dev*,struct ad7793_platform_data const*,int) ;
 int ad7793_sigma_delta_info ;
 int ad_sd_cleanup_buffer_and_trigger (struct iio_dev*) ;
 int ad_sd_init (int *,struct iio_dev*,struct spi_device*,int *) ;
 int ad_sd_setup_buffer_and_trigger (struct iio_dev*) ;
 int dev_err (TYPE_3__*,char*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_regulator_get (TYPE_3__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad7793_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 int regulator_get_voltage (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad7793_probe(struct spi_device *spi)
{
 const struct ad7793_platform_data *pdata = spi->dev.platform_data;
 struct ad7793_state *st;
 struct iio_dev *indio_dev;
 int ret, vref_mv = 0;

 if (!pdata) {
  dev_err(&spi->dev, "no platform data?\n");
  return -ENODEV;
 }

 if (!spi->irq) {
  dev_err(&spi->dev, "no IRQ?\n");
  return -ENODEV;
 }

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 st = iio_priv(indio_dev);

 ad_sd_init(&st->sd, indio_dev, spi, &ad7793_sigma_delta_info);

 if (pdata->refsel != AD7793_REFSEL_INTERNAL) {
  st->reg = devm_regulator_get(&spi->dev, "refin");
  if (IS_ERR(st->reg))
   return PTR_ERR(st->reg);

  ret = regulator_enable(st->reg);
  if (ret)
   return ret;

  vref_mv = regulator_get_voltage(st->reg);
  if (vref_mv < 0) {
   ret = vref_mv;
   goto error_disable_reg;
  }

  vref_mv /= 1000;
 } else {
  vref_mv = 1170;
 }

 st->chip_info =
  &ad7793_chip_info_tbl[spi_get_device_id(spi)->driver_data];

 spi_set_drvdata(spi, indio_dev);

 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = st->chip_info->channels;
 indio_dev->num_channels = st->chip_info->num_channels;
 indio_dev->info = st->chip_info->iio_info;

 ret = ad_sd_setup_buffer_and_trigger(indio_dev);
 if (ret)
  goto error_disable_reg;

 ret = ad7793_setup(indio_dev, pdata, vref_mv);
 if (ret)
  goto error_remove_trigger;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_remove_trigger;

 return 0;

error_remove_trigger:
 ad_sd_cleanup_buffer_and_trigger(indio_dev);
error_disable_reg:
 if (pdata->refsel != AD7793_REFSEL_INTERNAL)
  regulator_disable(st->reg);

 return ret;
}
