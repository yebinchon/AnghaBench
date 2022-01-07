
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; int name; } ;
struct TYPE_5__ {int of_node; } ;
struct spi_device {TYPE_2__ dev; } ;
struct TYPE_4__ {TYPE_2__* parent; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct adis16480 {int clk_freq; int ext_clk; int adis; TYPE_3__* chip_info; } ;
struct TYPE_6__ {int int_clk; int num_channels; int channels; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IS_ERR_OR_NULL (int ) ;
 TYPE_3__* adis16480_chip_info ;
 int adis16480_config_irq_pin (int ,struct adis16480*) ;
 int adis16480_data ;
 int adis16480_debugfs_init (struct iio_dev*) ;
 int adis16480_ext_clk_config (struct adis16480*,int ,int) ;
 int adis16480_get_ext_clocks (struct adis16480*) ;
 int adis16480_info ;
 int adis16480_initial_setup (struct iio_dev*) ;
 int adis16480_stop_device (struct iio_dev*) ;
 int adis_cleanup_buffer_and_trigger (int *,struct iio_dev*) ;
 int adis_init (int *,struct iio_dev*,struct spi_device*,int *) ;
 int adis_setup_buffer_and_trigger (int *,struct iio_dev*,int *) ;
 int clk_disable_unprepare (int ) ;
 int clk_get_rate (int ) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_2__*,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct adis16480* iio_priv (struct iio_dev*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adis16480_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct iio_dev *indio_dev;
 struct adis16480 *st;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 spi_set_drvdata(spi, indio_dev);

 st = iio_priv(indio_dev);

 st->chip_info = &adis16480_chip_info[id->driver_data];
 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->channels = st->chip_info->channels;
 indio_dev->num_channels = st->chip_info->num_channels;
 indio_dev->info = &adis16480_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = adis_init(&st->adis, indio_dev, spi, &adis16480_data);
 if (ret)
  return ret;

 ret = adis16480_config_irq_pin(spi->dev.of_node, st);
 if (ret)
  return ret;

 ret = adis16480_get_ext_clocks(st);
 if (ret)
  return ret;

 if (!IS_ERR_OR_NULL(st->ext_clk)) {
  ret = adis16480_ext_clk_config(st, spi->dev.of_node, 1);
  if (ret)
   return ret;

  st->clk_freq = clk_get_rate(st->ext_clk);
  st->clk_freq *= 1000;
 } else {
  st->clk_freq = st->chip_info->int_clk;
 }

 ret = adis_setup_buffer_and_trigger(&st->adis, indio_dev, ((void*)0));
 if (ret)
  goto error_clk_disable_unprepare;

 ret = adis16480_initial_setup(indio_dev);
 if (ret)
  goto error_cleanup_buffer;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_stop_device;

 adis16480_debugfs_init(indio_dev);

 return 0;

error_stop_device:
 adis16480_stop_device(indio_dev);
error_cleanup_buffer:
 adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
error_clk_disable_unprepare:
 clk_disable_unprepare(st->ext_clk);
 return ret;
}
