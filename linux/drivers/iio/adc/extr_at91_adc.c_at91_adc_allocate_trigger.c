
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct iio_trigger {int * ops; TYPE_1__ dev; } ;
struct TYPE_4__ {int parent; } ;
struct iio_dev {TYPE_2__ dev; int id; int name; } ;
struct at91_adc_trigger {int name; } ;


 int at91_adc_trigger_ops ;
 struct iio_trigger* iio_trigger_alloc (char*,int ,int ,int ) ;
 int iio_trigger_register (struct iio_trigger*) ;
 int iio_trigger_set_drvdata (struct iio_trigger*,struct iio_dev*) ;

__attribute__((used)) static struct iio_trigger *at91_adc_allocate_trigger(struct iio_dev *idev,
           struct at91_adc_trigger *trigger)
{
 struct iio_trigger *trig;
 int ret;

 trig = iio_trigger_alloc("%s-dev%d-%s", idev->name,
     idev->id, trigger->name);
 if (trig == ((void*)0))
  return ((void*)0);

 trig->dev.parent = idev->dev.parent;
 iio_trigger_set_drvdata(trig, idev);
 trig->ops = &at91_adc_trigger_ops;

 ret = iio_trigger_register(trig);
 if (ret)
  return ((void*)0);

 return trig;
}
