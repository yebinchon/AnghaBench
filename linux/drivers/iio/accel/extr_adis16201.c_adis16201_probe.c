
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* driver; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_5__ {TYPE_3__* parent; } ;
struct iio_dev {int modes; int num_channels; int channels; int * info; TYPE_2__ dev; int name; } ;
struct adis {int dummy; } ;
struct TYPE_4__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int adis16201_channels ;
 int adis16201_data ;
 int adis16201_info ;
 int adis_cleanup_buffer_and_trigger (struct adis*,struct iio_dev*) ;
 int adis_init (struct adis*,struct iio_dev*,struct spi_device*,int *) ;
 int adis_initial_startup (struct adis*) ;
 int adis_setup_buffer_and_trigger (struct adis*,struct iio_dev*,int *) ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct adis* iio_priv (struct iio_dev*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adis16201_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct adis *st;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);

 indio_dev->name = spi->dev.driver->name;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &adis16201_info;

 indio_dev->channels = adis16201_channels;
 indio_dev->num_channels = ARRAY_SIZE(adis16201_channels);
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = adis_init(st, indio_dev, spi, &adis16201_data);
 if (ret)
  return ret;

 ret = adis_setup_buffer_and_trigger(st, indio_dev, ((void*)0));
 if (ret)
  return ret;

 ret = adis_initial_startup(st);
 if (ret)
  goto error_cleanup_buffer_trigger;

 ret = iio_device_register(indio_dev);
 if (ret < 0)
  goto error_cleanup_buffer_trigger;

 return 0;

error_cleanup_buffer_trigger:
 adis_cleanup_buffer_and_trigger(st, indio_dev);
 return ret;
}
