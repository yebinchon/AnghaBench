
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_device_id {size_t driver_data; int name; } ;
struct spi_device {int dev; } ;
struct TYPE_2__ {int * parent; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct adis16136 {int adis; int * chip_info; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int adis16136_channels ;
 int * adis16136_chip_info ;
 int adis16136_data ;
 int adis16136_debugfs_init (struct iio_dev*) ;
 int adis16136_info ;
 int adis16136_initial_setup (struct iio_dev*) ;
 int adis16136_stop_device (struct iio_dev*) ;
 int adis_cleanup_buffer_and_trigger (int *,struct iio_dev*) ;
 int adis_init (int *,struct iio_dev*,struct spi_device*,int *) ;
 int adis_setup_buffer_and_trigger (int *,struct iio_dev*,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct adis16136* iio_priv (struct iio_dev*) ;
 struct spi_device_id* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adis16136_probe(struct spi_device *spi)
{
 const struct spi_device_id *id = spi_get_device_id(spi);
 struct adis16136 *adis16136;
 struct iio_dev *indio_dev;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*adis16136));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 spi_set_drvdata(spi, indio_dev);

 adis16136 = iio_priv(indio_dev);

 adis16136->chip_info = &adis16136_chip_info[id->driver_data];
 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->channels = adis16136_channels;
 indio_dev->num_channels = ARRAY_SIZE(adis16136_channels);
 indio_dev->info = &adis16136_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = adis_init(&adis16136->adis, indio_dev, spi, &adis16136_data);
 if (ret)
  return ret;

 ret = adis_setup_buffer_and_trigger(&adis16136->adis, indio_dev, ((void*)0));
 if (ret)
  return ret;

 ret = adis16136_initial_setup(indio_dev);
 if (ret)
  goto error_cleanup_buffer;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_stop_device;

 adis16136_debugfs_init(indio_dev);

 return 0;

error_stop_device:
 adis16136_stop_device(indio_dev);
error_cleanup_buffer:
 adis_cleanup_buffer_and_trigger(&adis16136->adis, indio_dev);
 return ret;
}
