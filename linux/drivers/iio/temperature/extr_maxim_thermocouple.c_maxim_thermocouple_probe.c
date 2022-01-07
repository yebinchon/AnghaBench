
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; } ;
struct spi_device {int dev; } ;
struct maxim_thermocouple_data {struct maxim_thermocouple_chip const* chip; struct spi_device* spi; } ;
struct maxim_thermocouple_chip {int num_channels; int scan_masks; int channels; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {TYPE_1__ dev; int modes; int num_channels; int available_scan_masks; int channels; int name; int * info; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int MAXIM_THERMOCOUPLE_DRV_NAME ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int devm_iio_device_register (int *,struct iio_dev*) ;
 int devm_iio_triggered_buffer_setup (int *,struct iio_dev*,int *,int ,int *) ;
 struct maxim_thermocouple_data* iio_priv (struct iio_dev*) ;
 struct maxim_thermocouple_chip* maxim_thermocouple_chips ;
 int maxim_thermocouple_info ;
 int maxim_thermocouple_trigger_handler ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;

__attribute__((used)) static int maxim_thermocouple_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct iio_dev *indio_dev;
 struct maxim_thermocouple_data *data;
 const struct maxim_thermocouple_chip *chip =
   &maxim_thermocouple_chips[id->driver_data];
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*data));
 if (!indio_dev)
  return -ENOMEM;

 indio_dev->info = &maxim_thermocouple_info;
 indio_dev->name = MAXIM_THERMOCOUPLE_DRV_NAME;
 indio_dev->channels = chip->channels;
 indio_dev->available_scan_masks = chip->scan_masks;
 indio_dev->num_channels = chip->num_channels;
 indio_dev->modes = INDIO_DIRECT_MODE;
 indio_dev->dev.parent = &spi->dev;

 data = iio_priv(indio_dev);
 data->spi = spi;
 data->chip = chip;

 ret = devm_iio_triggered_buffer_setup(&spi->dev,
    indio_dev, ((void*)0),
    maxim_thermocouple_trigger_handler, ((void*)0));
 if (ret)
  return ret;

 return devm_iio_device_register(&spi->dev, indio_dev);
}
