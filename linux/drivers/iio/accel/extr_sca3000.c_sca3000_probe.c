
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct spi_device {scalar_t__ irq; int dev; } ;
struct sca3000_state {TYPE_3__* info; int lock; struct spi_device* us; } ;
struct TYPE_4__ {int * parent; } ;
struct iio_dev {int * setup_ops; int modes; void* num_channels; void* channels; int * info; int name; TYPE_1__ dev; } ;
struct TYPE_6__ {scalar_t__ temp_output; } ;
struct TYPE_5__ {size_t driver_data; int name; } ;


 void* ARRAY_SIZE (void*) ;
 int ENOMEM ;
 int INDIO_DIRECT_MODE ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 struct iio_dev* devm_iio_device_alloc (int *,int) ;
 int free_irq (scalar_t__,struct iio_dev*) ;
 int iio_device_register (struct iio_dev*) ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int mutex_init (int *) ;
 int request_threaded_irq (scalar_t__,int *,int *,int,char*,struct iio_dev*) ;
 void* sca3000_channels ;
 void* sca3000_channels_with_temp ;
 int sca3000_clean_setup (struct sca3000_state*) ;
 int sca3000_configure_ring (struct iio_dev*) ;
 int sca3000_event_handler ;
 int sca3000_info ;
 int sca3000_print_rev (struct iio_dev*) ;
 int sca3000_ring_setup_ops ;
 TYPE_3__* sca3000_spi_chip_info_tbl ;
 TYPE_2__* spi_get_device_id (struct spi_device*) ;
 int spi_set_drvdata (struct spi_device*,struct iio_dev*) ;

__attribute__((used)) static int sca3000_probe(struct spi_device *spi)
{
 int ret;
 struct sca3000_state *st;
 struct iio_dev *indio_dev;

 indio_dev = devm_iio_device_alloc(&spi->dev, sizeof(*st));
 if (!indio_dev)
  return -ENOMEM;

 st = iio_priv(indio_dev);
 spi_set_drvdata(spi, indio_dev);
 st->us = spi;
 mutex_init(&st->lock);
 st->info = &sca3000_spi_chip_info_tbl[spi_get_device_id(spi)
           ->driver_data];

 indio_dev->dev.parent = &spi->dev;
 indio_dev->name = spi_get_device_id(spi)->name;
 indio_dev->info = &sca3000_info;
 if (st->info->temp_output) {
  indio_dev->channels = sca3000_channels_with_temp;
  indio_dev->num_channels =
   ARRAY_SIZE(sca3000_channels_with_temp);
 } else {
  indio_dev->channels = sca3000_channels;
  indio_dev->num_channels = ARRAY_SIZE(sca3000_channels);
 }
 indio_dev->modes = INDIO_DIRECT_MODE;

 ret = sca3000_configure_ring(indio_dev);
 if (ret)
  return ret;

 if (spi->irq) {
  ret = request_threaded_irq(spi->irq,
        ((void*)0),
        &sca3000_event_handler,
        IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
        "sca3000",
        indio_dev);
  if (ret)
   return ret;
 }
 indio_dev->setup_ops = &sca3000_ring_setup_ops;
 ret = sca3000_clean_setup(st);
 if (ret)
  goto error_free_irq;

 ret = sca3000_print_rev(indio_dev);
 if (ret)
  goto error_free_irq;

 return iio_device_register(indio_dev);

error_free_irq:
 if (spi->irq)
  free_irq(spi->irq, indio_dev);

 return ret;
}
