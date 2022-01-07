
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; int name; } ;
struct spi_device {int dev; } ;
struct TYPE_3__ {int * parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int * info; TYPE_1__ dev; int name; } ;
struct adis16260 {int adis; TYPE_2__* info; } ;
struct TYPE_4__ {int num_channels; int channels; } ;


 int ENODEV ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 TYPE_2__* adis16260_chip_info_table ;
 int adis16260_data ;
 int adis16260_info ;
 int adis_cleanup_buffer_and_trigger (int *,struct iio_dev*) ;
 int adis_init (int *,struct iio_dev*,struct spi_device*,int *) ;
 int adis_initial_startup (int *) ;
 int adis_setup_buffer_and_trigger (int *,struct iio_dev*,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct adis16260* iio_priv (struct iio_dev*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adis16260_probe(struct spi_device *spi)
{
 const struct spi_device_id *id;
 struct adis16260 *adis16260;
 struct iio_dev *indio_dev;
 int ret;

 id = spi_get_device_id(spi);
 if (!id)
  return -ENODEV;


 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adis16260));
 if (!indio_dev)
  return -ENOMEM;
 adis16260 = iio_priv(indio_dev);

 spi_set_drvdata(spi, indio_dev);

 adis16260->info = &adis16260_chip_info_table[id->driver_data];

 indio_dev->name = id->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &adis16260_info;
 indio_dev->channels = adis16260->info->channels;
 indio_dev->num_channels = adis16260->info->num_channels;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = adis_init(&adis16260->adis, indio_dev, spi, &adis16260_data);
 if (ret)
  return ret;

 ret = adis_setup_buffer_and_trigger(&adis16260->adis, indio_dev, ((void*)0));
 if (ret)
  return ret;


 ret = adis_initial_startup(&adis16260->adis);
 if (ret)
  goto error_cleanup_buffer_trigger;
 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_cleanup_buffer_trigger;

 return 0;

error_cleanup_buffer_trigger:
 adis_cleanup_buffer_and_trigger(&adis16260->adis, indio_dev);
 return ret;
}
