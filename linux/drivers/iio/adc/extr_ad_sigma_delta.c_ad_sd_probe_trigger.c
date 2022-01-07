
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct iio_dev {int trig; int name; int id; } ;
struct ad_sigma_delta {int irq_dis; TYPE_3__* trig; TYPE_2__* spi; int completion; } ;
struct TYPE_8__ {int * parent; } ;
struct TYPE_10__ {TYPE_1__ dev; int * ops; } ;
struct TYPE_9__ {int irq; int dev; } ;


 int ENOMEM ;
 int IRQF_TRIGGER_LOW ;
 int ad_sd_data_rdy_trig_poll ;
 int ad_sd_trigger_ops ;
 int disable_irq_nosync (int ) ;
 int free_irq (int ,struct ad_sigma_delta*) ;
 struct ad_sigma_delta* iio_device_get_drvdata (struct iio_dev*) ;
 TYPE_3__* iio_trigger_alloc (char*,int ,int ) ;
 int iio_trigger_free (TYPE_3__*) ;
 int iio_trigger_get (TYPE_3__*) ;
 int iio_trigger_register (TYPE_3__*) ;
 int iio_trigger_set_drvdata (TYPE_3__*,struct ad_sigma_delta*) ;
 int init_completion (int *) ;
 int request_irq (int ,int ,int ,int ,struct ad_sigma_delta*) ;

__attribute__((used)) static int ad_sd_probe_trigger(struct iio_dev *indio_dev)
{
 struct ad_sigma_delta *sigma_delta = iio_device_get_drvdata(indio_dev);
 int ret;

 sigma_delta->trig = iio_trigger_alloc("%s-dev%d", indio_dev->name,
      indio_dev->id);
 if (sigma_delta->trig == ((void*)0)) {
  ret = -ENOMEM;
  goto error_ret;
 }
 sigma_delta->trig->ops = &ad_sd_trigger_ops;
 init_completion(&sigma_delta->completion);

 ret = request_irq(sigma_delta->spi->irq,
     ad_sd_data_rdy_trig_poll,
     IRQF_TRIGGER_LOW,
     indio_dev->name,
     sigma_delta);
 if (ret)
  goto error_free_trig;

 if (!sigma_delta->irq_dis) {
  sigma_delta->irq_dis = 1;
  disable_irq_nosync(sigma_delta->spi->irq);
 }
 sigma_delta->trig->dev.parent = &sigma_delta->spi->dev;
 iio_trigger_set_drvdata(sigma_delta->trig, sigma_delta);

 ret = iio_trigger_register(sigma_delta->trig);
 if (ret)
  goto error_free_irq;


 indio_dev->trig = iio_trigger_get(sigma_delta->trig);

 return 0;

error_free_irq:
 free_irq(sigma_delta->spi->irq, sigma_delta);
error_free_trig:
 iio_trigger_free(sigma_delta->trig);
error_ret:
 return ret;
}
