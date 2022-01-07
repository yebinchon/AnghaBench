
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct iio_dev {int trig; int name; int id; } ;
struct adis {TYPE_3__* trig; TYPE_2__* spi; } ;
struct TYPE_10__ {int * parent; } ;
struct TYPE_12__ {int * ops; TYPE_1__ dev; } ;
struct TYPE_11__ {int irq; int dev; } ;


 int ENOMEM ;
 int IRQF_TRIGGER_RISING ;
 int adis_trigger_ops ;
 int free_irq (int ,TYPE_3__*) ;
 TYPE_3__* iio_trigger_alloc (char*,int ,int ) ;
 int iio_trigger_free (TYPE_3__*) ;
 int iio_trigger_generic_data_rdy_poll ;
 int iio_trigger_get (TYPE_3__*) ;
 int iio_trigger_register (TYPE_3__*) ;
 int iio_trigger_set_drvdata (TYPE_3__*,struct adis*) ;
 int request_irq (int ,int *,int ,int ,TYPE_3__*) ;

int adis_probe_trigger(struct adis *adis, struct iio_dev *indio_dev)
{
 int ret;

 adis->trig = iio_trigger_alloc("%s-dev%d", indio_dev->name,
     indio_dev->id);
 if (adis->trig == ((void*)0))
  return -ENOMEM;

 adis->trig->dev.parent = &adis->spi->dev;
 adis->trig->ops = &adis_trigger_ops;
 iio_trigger_set_drvdata(adis->trig, adis);

 ret = request_irq(adis->spi->irq,
     &iio_trigger_generic_data_rdy_poll,
     IRQF_TRIGGER_RISING,
     indio_dev->name,
     adis->trig);
 if (ret)
  goto error_free_trig;

 ret = iio_trigger_register(adis->trig);

 indio_dev->trig = iio_trigger_get(adis->trig);
 if (ret)
  goto error_free_irq;

 return 0;

error_free_irq:
 free_irq(adis->spi->irq, adis->trig);
error_free_trig:
 iio_trigger_free(adis->trig);
 return ret;
}
