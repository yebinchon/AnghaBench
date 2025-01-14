
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iio_dev {int id; int name; } ;
struct device {int dummy; } ;
struct bmc150_accel_trigger {TYPE_2__* indio_trig; int setup; struct bmc150_accel_data* data; int intr; } ;
struct bmc150_accel_data {struct bmc150_accel_trigger* triggers; int regmap; } ;
struct TYPE_8__ {int setup; int intr; int name; } ;
struct TYPE_6__ {struct device* parent; } ;
struct TYPE_7__ {int * ops; TYPE_1__ dev; } ;


 int BMC150_ACCEL_TRIGGERS ;
 int ENOMEM ;
 int bmc150_accel_trigger_ops ;
 TYPE_5__* bmc150_accel_triggers ;
 int bmc150_accel_unregister_triggers (struct bmc150_accel_data*,int) ;
 TYPE_2__* devm_iio_trigger_alloc (struct device*,int ,int ,int ) ;
 int iio_trigger_register (TYPE_2__*) ;
 int iio_trigger_set_drvdata (TYPE_2__*,struct bmc150_accel_trigger*) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int bmc150_accel_triggers_setup(struct iio_dev *indio_dev,
           struct bmc150_accel_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);
 int i, ret;

 for (i = 0; i < BMC150_ACCEL_TRIGGERS; i++) {
  struct bmc150_accel_trigger *t = &data->triggers[i];

  t->indio_trig = devm_iio_trigger_alloc(dev,
     bmc150_accel_triggers[i].name,
             indio_dev->name,
             indio_dev->id);
  if (!t->indio_trig) {
   ret = -ENOMEM;
   break;
  }

  t->indio_trig->dev.parent = dev;
  t->indio_trig->ops = &bmc150_accel_trigger_ops;
  t->intr = bmc150_accel_triggers[i].intr;
  t->data = data;
  t->setup = bmc150_accel_triggers[i].setup;
  iio_trigger_set_drvdata(t->indio_trig, t);

  ret = iio_trigger_register(t->indio_trig);
  if (ret)
   break;
 }

 if (ret)
  bmc150_accel_unregister_triggers(data, i - 1);

 return ret;
}
