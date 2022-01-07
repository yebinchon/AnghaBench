
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct iio_trigger {int * ops; TYPE_1__ dev; } ;
struct TYPE_5__ {int parent; } ;
struct iio_dev {TYPE_2__ dev; int id; int name; } ;


 struct iio_trigger* ERR_PTR (int) ;
 int at91_adc_trigger_ops ;
 struct iio_trigger* devm_iio_trigger_alloc (TYPE_2__*,char*,int ,int ,char*) ;
 int devm_iio_trigger_register (TYPE_2__*,struct iio_trigger*) ;
 int iio_trigger_set_drvdata (struct iio_trigger*,struct iio_dev*) ;

__attribute__((used)) static struct iio_trigger *at91_adc_allocate_trigger(struct iio_dev *indio,
           char *trigger_name)
{
 struct iio_trigger *trig;
 int ret;

 trig = devm_iio_trigger_alloc(&indio->dev, "%s-dev%d-%s", indio->name,
          indio->id, trigger_name);
 if (!trig)
  return ((void*)0);

 trig->dev.parent = indio->dev.parent;
 iio_trigger_set_drvdata(trig, indio);
 trig->ops = &at91_adc_trigger_ops;

 ret = devm_iio_trigger_register(&indio->dev, trig);
 if (ret)
  return ERR_PTR(ret);

 return trig;
}
