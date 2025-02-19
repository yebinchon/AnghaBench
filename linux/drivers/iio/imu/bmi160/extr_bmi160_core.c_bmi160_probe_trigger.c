
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct iio_dev {int trig; int dev; int id; int name; } ;
struct bmi160_data {TYPE_2__* trig; int regmap; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {int * ops; TYPE_1__ dev; } ;


 int ENOMEM ;
 int bmi160_trigger_ops ;
 TYPE_2__* devm_iio_trigger_alloc (int *,char*,int ,int ) ;
 int devm_iio_trigger_register (int *,TYPE_2__*) ;
 int devm_request_irq (int *,int,int *,int ,char*,TYPE_2__*) ;
 struct bmi160_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_generic_data_rdy_poll ;
 int iio_trigger_get (TYPE_2__*) ;
 int iio_trigger_set_drvdata (TYPE_2__*,struct iio_dev*) ;
 int regmap_get_device (int ) ;

int bmi160_probe_trigger(struct iio_dev *indio_dev, int irq, u32 irq_type)
{
 struct bmi160_data *data = iio_priv(indio_dev);
 int ret;

 data->trig = devm_iio_trigger_alloc(&indio_dev->dev, "%s-dev%d",
         indio_dev->name, indio_dev->id);

 if (data->trig == ((void*)0))
  return -ENOMEM;

 ret = devm_request_irq(&indio_dev->dev, irq,
          &iio_trigger_generic_data_rdy_poll,
          irq_type, "bmi160", data->trig);
 if (ret)
  return ret;

 data->trig->dev.parent = regmap_get_device(data->regmap);
 data->trig->ops = &bmi160_trigger_ops;
 iio_trigger_set_drvdata(data->trig, indio_dev);

 ret = devm_iio_trigger_register(&indio_dev->dev, data->trig);
 if (ret)
  return ret;

 indio_dev->trig = iio_trigger_get(data->trig);

 return 0;
}
