
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mpu3050 {int irq_opendrain; int irq_actl; int irq_latch; int irq; TYPE_2__* trig; TYPE_7__* dev; } ;
struct iio_dev {int trig; int dev; int id; int name; } ;
struct TYPE_10__ {int of_node; } ;
struct TYPE_8__ {TYPE_7__* parent; } ;
struct TYPE_9__ {int * ops; TYPE_1__ dev; int name; } ;


 int ENOMEM ;
 unsigned long IRQF_ONESHOT ;
 unsigned long IRQF_SHARED ;




 int dev_err (TYPE_7__*,char*,int,...) ;
 int dev_info (int *,char*) ;
 TYPE_2__* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 struct mpu3050* iio_priv (struct iio_dev*) ;
 int iio_trigger_get (TYPE_2__*) ;
 int iio_trigger_register (TYPE_2__*) ;
 int iio_trigger_set_drvdata (TYPE_2__*,struct iio_dev*) ;
 int irq_get_irq_data (int) ;
 unsigned long irqd_get_trigger_type (int ) ;
 int mpu3050_irq_handler ;
 int mpu3050_irq_thread ;
 int mpu3050_trigger_ops ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int request_threaded_irq (int,int ,int ,unsigned long,int ,TYPE_2__*) ;

__attribute__((used)) static int mpu3050_trigger_probe(struct iio_dev *indio_dev, int irq)
{
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);
 unsigned long irq_trig;
 int ret;

 mpu3050->trig = devm_iio_trigger_alloc(&indio_dev->dev,
            "%s-dev%d",
            indio_dev->name,
            indio_dev->id);
 if (!mpu3050->trig)
  return -ENOMEM;


 if (of_property_read_bool(mpu3050->dev->of_node, "drive-open-drain"))
  mpu3050->irq_opendrain = 1;

 irq_trig = irqd_get_trigger_type(irq_get_irq_data(irq));





 switch (irq_trig) {
 case 128:
  dev_info(&indio_dev->dev,
    "pulse interrupts on the rising edge\n");
  break;
 case 131:
  mpu3050->irq_actl = 1;
  dev_info(&indio_dev->dev,
    "pulse interrupts on the falling edge\n");
  break;
 case 130:
  mpu3050->irq_latch = 1;
  dev_info(&indio_dev->dev,
    "interrupts active high level\n");





  irq_trig |= IRQF_ONESHOT;
  break;
 case 129:
  mpu3050->irq_latch = 1;
  mpu3050->irq_actl = 1;
  irq_trig |= IRQF_ONESHOT;
  dev_info(&indio_dev->dev,
    "interrupts active low level\n");
  break;
 default:

  dev_err(&indio_dev->dev,
   "unsupported IRQ trigger specified (%lx), enforce "
   "rising edge\n", irq_trig);
  irq_trig = 128;
  break;
 }


 if (mpu3050->irq_opendrain)
  irq_trig |= IRQF_SHARED;

 ret = request_threaded_irq(irq,
       mpu3050_irq_handler,
       mpu3050_irq_thread,
       irq_trig,
       mpu3050->trig->name,
       mpu3050->trig);
 if (ret) {
  dev_err(mpu3050->dev,
   "can't get IRQ %d, error %d\n", irq, ret);
  return ret;
 }

 mpu3050->irq = irq;
 mpu3050->trig->dev.parent = mpu3050->dev;
 mpu3050->trig->ops = &mpu3050_trigger_ops;
 iio_trigger_set_drvdata(mpu3050->trig, indio_dev);

 ret = iio_trigger_register(mpu3050->trig);
 if (ret)
  return ret;

 indio_dev->trig = iio_trigger_get(mpu3050->trig);

 return 0;
}
