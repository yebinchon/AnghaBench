
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int of_node; struct ad7791_platform_data* platform_data; } ;
struct spi_device {TYPE_3__ dev; int irq; } ;
struct TYPE_7__ {int of_node; TYPE_3__* parent; } ;
struct iio_dev {int * info; int num_channels; int channels; int modes; int name; TYPE_1__ dev; } ;
struct ad7791_state {int reg; TYPE_6__* info; int sd; } ;
struct ad7791_platform_data {int dummy; } ;
struct TYPE_10__ {int flags; int num_channels; int channels; } ;
struct TYPE_8__ {size_t driver_data; int name; } ;


 int AD7791_FLAG_HAS_FILTER ;
 int ENOMEM ;
 int ENXIO ;
 int INDIO_DIRECT_MODE ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 TYPE_6__* ad7791_chip_infos ;
 int ad7791_info ;
 int ad7791_no_filter_info ;
 int ad7791_setup (struct ad7791_state*,struct ad7791_platform_data*) ;
 int ad7791_sigma_delta_info ;
 int ad_sd_cleanup_buffer_and_trigger (struct iio_dev*) ;
 int ad_sd_init (int *,struct iio_dev*,struct spi_device*,int *) ;
 int ad_sd_setup_buffer_and_trigger (struct iio_dev*) ;
 int dev_err (TYPE_3__*,char*) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_regulator_get (TYPE_3__*,char*) ;
 int iio_device_register (struct iio_dev*) ;
 struct ad7791_state* iio_priv (struct iio_dev*) ;
 int regulator_disable (int ) ;
 int regulator_enable (int ) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int ad7791_probe(struct spi_device *spi)
{
 struct ad7791_platform_data *pdata = spi->dev.platform_data;
 struct iio_dev *indio_dev;
 struct ad7791_state *st;
 int ret;

 if (!spi->irq) {
  dev_err(&spi->dev, "Missing IRQ.\n");
  return -ENXIO;
 }

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);

 st->reg = devm_regulator_get(&spi->dev, "refin");
 if (IS_ERR(st->reg))
  return PTR_ERR(st->reg);

 ret = regulator_enable(st->reg);
 if (ret)
  return ret;

 st->info = &ad7791_chip_infos[spi_get_device_id(spi)->driver_data];
 ad_sd_init(&st->sd, indio_dev, spi, &ad7791_sigma_delta_info);

 spi_set_drvdata(spi, indio_dev);

 indio_dev->dev.parent = &spi->dev;
 indio_dev->dev.of_node = spi->dev.of_node;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->channels = st->info->channels;
 indio_dev->num_channels = st->info->num_channels;
 if (st->info->flags & AD7791_FLAG_HAS_FILTER)
  indio_dev->info = &ad7791_info;
 else
  indio_dev->info = &ad7791_no_filter_info;

 ret = ad_sd_setup_buffer_and_trigger(indio_dev);
 if (ret)
  goto error_disable_reg;

 ret = ad7791_setup(st, pdata);
 if (ret)
  goto error_remove_trigger;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_remove_trigger;

 return 0;

error_remove_trigger:
 ad_sd_cleanup_buffer_and_trigger(indio_dev);
error_disable_reg:
 regulator_disable(st->reg);

 return ret;
}
