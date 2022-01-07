
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


 int ENOMEM ;
 struct iio_trigger* ERR_PTR (int) ;
 int iio_priv (struct iio_dev*) ;
 struct iio_trigger* iio_trigger_alloc (char*,int ,int ,char const*) ;
 int iio_trigger_free (struct iio_trigger*) ;
 int iio_trigger_register (struct iio_trigger*) ;
 int iio_trigger_set_drvdata (struct iio_trigger*,int ) ;
 int xadc_trigger_ops ;

__attribute__((used)) static struct iio_trigger *xadc_alloc_trigger(struct iio_dev *indio_dev,
 const char *name)
{
 struct iio_trigger *trig;
 int ret;

 trig = iio_trigger_alloc("%s%d-%s", indio_dev->name,
    indio_dev->id, name);
 if (trig == ((void*)0))
  return ERR_PTR(-ENOMEM);

 trig->dev.parent = indio_dev->dev.parent;
 trig->ops = &xadc_trigger_ops;
 iio_trigger_set_drvdata(trig, iio_priv(indio_dev));

 ret = iio_trigger_register(trig);
 if (ret)
  goto error_free_trig;

 return trig;

error_free_trig:
 iio_trigger_free(trig);
 return ERR_PTR(ret);
}
