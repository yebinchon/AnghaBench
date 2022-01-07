
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct iio_dev {int modes; int * info; int num_channels; int channels; int name; TYPE_1__ dev; } ;
struct adis16460 {int adis; TYPE_3__* chip_info; } ;
struct TYPE_6__ {int num_channels; int channels; } ;
struct TYPE_5__ {int name; } ;


 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 TYPE_3__ adis16460_chip_info ;
 int adis16460_data ;
 int adis16460_debugfs_init (struct iio_dev*) ;
 int adis16460_enable_irq (int *,int ) ;
 int adis16460_info ;
 int adis16460_initial_setup (struct iio_dev*) ;
 int adis_cleanup_buffer_and_trigger (int *,struct iio_dev*) ;
 int adis_init (int *,struct iio_dev*,struct spi_device*,int *) ;
 int adis_setup_buffer_and_trigger (int *,struct iio_dev*,int *) ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int iio_device_register (struct iio_dev*) ;
 struct adis16460* iio_priv (struct iio_dev*) ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adis16460_probe(struct spi_device *spi)
{
 struct iio_dev *indio_dev;
 struct adis16460 *st;
 int ret;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (indio_dev == ((void*)0))
  return -ENOMEM;

 spi_set_drvdata(spi, indio_dev);

 st = iio_priv(indio_dev);

 st->chip_info = &adis16460_chip_info;
 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->channels = st->chip_info->channels;
 indio_dev->num_channels = st->chip_info->num_channels;
 indio_dev->info = &adis16460_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = adis_init(&st->adis, indio_dev, spi, &adis16460_data);
 if (ret)
  return ret;

 ret = adis_setup_buffer_and_trigger(&st->adis, indio_dev, ((void*)0));
 if (ret)
  return ret;

 adis16460_enable_irq(&st->adis, 0);

 ret = adis16460_initial_setup(indio_dev);
 if (ret)
  goto error_cleanup_buffer;

 ret = iio_device_register(indio_dev);
 if (ret)
  goto error_cleanup_buffer;

 adis16460_debugfs_init(indio_dev);

 return 0;

error_cleanup_buffer:
 adis_cleanup_buffer_and_trigger(&st->adis, indio_dev);
 return ret;
}
