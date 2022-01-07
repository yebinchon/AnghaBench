
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct inv_mpu6050_state {TYPE_2__* trig; int map; int irq; } ;
struct iio_dev {int trig; int dev; int id; int name; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {int * ops; TYPE_1__ dev; } ;


 int ENOMEM ;
 TYPE_2__* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 int devm_iio_trigger_register (int *,TYPE_2__*) ;
 int devm_request_irq (int *,int ,int *,int,char*,TYPE_2__*) ;
 struct inv_mpu6050_state* iio_priv (struct iio_dev*) ;
 int iio_trigger_generic_data_rdy_poll ;
 int iio_trigger_get (TYPE_2__*) ;
 int iio_trigger_set_drvdata (TYPE_2__*,struct iio_dev*) ;
 int inv_mpu_trigger_ops ;
 int regmap_get_device (int ) ;

int inv_mpu6050_probe_trigger(struct iio_dev *indio_dev, int irq_type)
{
 int ret;
 struct inv_mpu6050_state *st = iio_priv(indio_dev);

 st->trig = devm_iio_trigger_alloc(&indio_dev->dev,
       "%s-dev%d",
       indio_dev->name,
       indio_dev->id);
 if (!st->trig)
  return -ENOMEM;

 ret = devm_request_irq(&indio_dev->dev, st->irq,
          &iio_trigger_generic_data_rdy_poll,
          irq_type,
          "inv_mpu",
          st->trig);
 if (ret)
  return ret;

 st->trig->dev.parent = regmap_get_device(st->map);
 st->trig->ops = &inv_mpu_trigger_ops;
 iio_trigger_set_drvdata(st->trig, indio_dev);

 ret = devm_iio_trigger_register(&indio_dev->dev, st->trig);
 if (ret)
  return ret;

 indio_dev->trig = iio_trigger_get(st->trig);

 return 0;
}
