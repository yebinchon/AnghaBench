
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* driver; } ;
struct spi_device {TYPE_3__ dev; } ;
struct TYPE_6__ {TYPE_3__* parent; } ;
struct iio_dev {int modes; int * info; TYPE_2__ dev; int num_channels; int channels; int name; } ;
struct adis16130_state {int buf_lock; struct spi_device* us; } ;
struct TYPE_5__ {int name; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int adis16130_channels ;
 int adis16130_info ;
 struct iio_dev* devm_iio_device_alloc (TYPE_3__*,int) ;
 int devm_iio_device_register (TYPE_3__*,struct iio_dev*) ;
 struct adis16130_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int adis16130_probe(struct spi_device *spi)
{
 struct adis16130_state *st;
 struct iio_dev *indio_dev;


 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;
 st = iio_priv(indio_dev);

 spi_set_drvdata(spi, indio_dev);
 st->us = spi;
 mutex_init(&st->buf_lock);
 indio_dev->name = spi->dev.driver->name;
 indio_dev->channels = adis16130_channels;
 indio_dev->num_channels = ARRAY_SIZE(adis16130_channels);
 indio_dev->dev.parent = &spi->dev;
 indio_dev->info = &adis16130_info;
 indio_dev->modes = INDIO_DIRECT_MODE;

 return devm_iio_device_register(&spi->dev, indio_dev);
}
