
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zpa2326_private {struct iio_trigger* trigger; } ;
struct TYPE_2__ {struct device* parent; } ;
struct iio_trigger {int * ops; TYPE_1__ dev; } ;
struct iio_dev {int id; int name; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int dev_err (struct device*,char*,int) ;
 struct iio_trigger* devm_iio_trigger_alloc (struct device*,char*,int ,int ) ;
 int devm_iio_trigger_register (struct device*,struct iio_trigger*) ;
 int zpa2326_trigger_ops ;

__attribute__((used)) static int zpa2326_init_managed_trigger(struct device *parent,
     struct iio_dev *indio_dev,
     struct zpa2326_private *private,
     int irq)
{
 struct iio_trigger *trigger;
 int ret;

 if (irq <= 0)
  return 0;

 trigger = devm_iio_trigger_alloc(parent, "%s-dev%d",
      indio_dev->name, indio_dev->id);
 if (!trigger)
  return -ENOMEM;


 trigger->dev.parent = parent;
 trigger->ops = &zpa2326_trigger_ops;

 private->trigger = trigger;


 ret = devm_iio_trigger_register(parent, trigger);
 if (ret)
  dev_err(parent, "failed to register hardware trigger (%d)",
   ret);

 return ret;
}
