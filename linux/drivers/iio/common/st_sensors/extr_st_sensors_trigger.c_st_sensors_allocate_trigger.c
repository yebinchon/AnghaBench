
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct st_sensor_data {int edge_irq; TYPE_5__* trig; int irq; TYPE_4__* sensor_settings; scalar_t__ int_pin_open_drain; int dev; } ;
struct iio_trigger_ops {int dummy; } ;
struct iio_dev {int trig; int dev; int name; } ;
struct TYPE_12__ {int parent; } ;
struct TYPE_16__ {int name; TYPE_1__ dev; struct iio_trigger_ops const* ops; } ;
struct TYPE_13__ {scalar_t__ addr; } ;
struct TYPE_14__ {TYPE_2__ stat_drdy; int mask_ihl; int addr_ihl; } ;
struct TYPE_15__ {TYPE_3__ drdy_irq; } ;


 int ENOMEM ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_SHARED ;




 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*) ;
 int free_irq (int ,TYPE_5__*) ;
 struct st_sensor_data* iio_priv (struct iio_dev*) ;
 TYPE_5__* iio_trigger_alloc (char*,int ) ;
 int iio_trigger_free (TYPE_5__*) ;
 int iio_trigger_get (TYPE_5__*) ;
 int iio_trigger_register (TYPE_5__*) ;
 int iio_trigger_set_drvdata (TYPE_5__*,struct iio_dev*) ;
 int irq_get_irq_data (int ) ;
 unsigned long irqd_get_trigger_type (int ) ;
 int request_threaded_irq (int ,int ,int ,unsigned long,int ,TYPE_5__*) ;
 int st_sensors_irq_handler ;
 int st_sensors_irq_thread ;
 int st_sensors_write_data_with_mask (struct iio_dev*,int ,int ,int) ;

int st_sensors_allocate_trigger(struct iio_dev *indio_dev,
    const struct iio_trigger_ops *trigger_ops)
{
 struct st_sensor_data *sdata = iio_priv(indio_dev);
 unsigned long irq_trig;
 int err;

 sdata->trig = iio_trigger_alloc("%s-trigger", indio_dev->name);
 if (sdata->trig == ((void*)0)) {
  dev_err(&indio_dev->dev, "failed to allocate iio trigger.\n");
  return -ENOMEM;
 }

 iio_trigger_set_drvdata(sdata->trig, indio_dev);
 sdata->trig->ops = trigger_ops;
 sdata->trig->dev.parent = sdata->dev;

 irq_trig = irqd_get_trigger_type(irq_get_irq_data(sdata->irq));




 switch(irq_trig) {
 case 131:
 case 129:
  if (!sdata->sensor_settings->drdy_irq.addr_ihl) {
   dev_err(&indio_dev->dev,
    "falling/low specified for IRQ "
    "but hardware supports only rising/high: "
    "will request rising/high\n");
   if (irq_trig == 131)
    irq_trig = 128;
   if (irq_trig == 129)
    irq_trig = 130;
  } else {

   err = st_sensors_write_data_with_mask(indio_dev,
    sdata->sensor_settings->drdy_irq.addr_ihl,
    sdata->sensor_settings->drdy_irq.mask_ihl, 1);
   if (err < 0)
    goto iio_trigger_free;
   dev_info(&indio_dev->dev,
     "interrupts on the falling edge or "
     "active low level\n");
  }
  break;
 case 128:
  dev_info(&indio_dev->dev,
    "interrupts on the rising edge\n");
  break;
 case 130:
  dev_info(&indio_dev->dev,
    "interrupts active high level\n");
  break;
 default:

  dev_err(&indio_dev->dev,
   "unsupported IRQ trigger specified (%lx), enforce "
   "rising edge\n", irq_trig);
  irq_trig = 128;
 }


 if (irq_trig == 131 ||
     irq_trig == 128)
  sdata->edge_irq = 1;
 else






  irq_trig |= IRQF_ONESHOT;
 if (sdata->int_pin_open_drain &&
     sdata->sensor_settings->drdy_irq.stat_drdy.addr)
  irq_trig |= IRQF_SHARED;

 err = request_threaded_irq(sdata->irq,
       st_sensors_irq_handler,
       st_sensors_irq_thread,
       irq_trig,
       sdata->trig->name,
       sdata->trig);
 if (err) {
  dev_err(&indio_dev->dev, "failed to request trigger IRQ.\n");
  goto iio_trigger_free;
 }

 err = iio_trigger_register(sdata->trig);
 if (err < 0) {
  dev_err(&indio_dev->dev, "failed to register iio trigger.\n");
  goto iio_trigger_register_error;
 }
 indio_dev->trig = iio_trigger_get(sdata->trig);

 return 0;

iio_trigger_register_error:
 free_irq(sdata->irq, sdata->trig);
iio_trigger_free:
 iio_trigger_free(sdata->trig);
 return err;
}
