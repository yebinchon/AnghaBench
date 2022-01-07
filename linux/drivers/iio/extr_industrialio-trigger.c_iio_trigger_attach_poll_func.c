
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ parent; } ;
struct iio_trigger {int attached_own_device; TYPE_3__ dev; TYPE_1__* ops; int name; int pool; } ;
struct iio_poll_func {scalar_t__ irq; TYPE_4__* indio_dev; int name; int type; int thread; int h; } ;
struct TYPE_6__ {scalar_t__ parent; } ;
struct TYPE_8__ {int driver_module; TYPE_2__ dev; } ;
struct TYPE_5__ {int (* set_trigger_state ) (struct iio_trigger*,int) ;} ;


 int CONFIG_IIO_CONSUMERS_PER_TRIGGER ;
 int __module_get (int ) ;
 int bitmap_empty (int ,int ) ;
 int free_irq (scalar_t__,struct iio_poll_func*) ;
 scalar_t__ iio_trigger_get_irq (struct iio_trigger*) ;
 int iio_trigger_put_irq (struct iio_trigger*,scalar_t__) ;
 int module_put (int ) ;
 int pr_err (char*,int ,int ) ;
 int request_threaded_irq (scalar_t__,int ,int ,int ,int ,struct iio_poll_func*) ;
 int stub1 (struct iio_trigger*,int) ;

__attribute__((used)) static int iio_trigger_attach_poll_func(struct iio_trigger *trig,
     struct iio_poll_func *pf)
{
 int ret = 0;
 bool notinuse
  = bitmap_empty(trig->pool, CONFIG_IIO_CONSUMERS_PER_TRIGGER);


 __module_get(pf->indio_dev->driver_module);


 pf->irq = iio_trigger_get_irq(trig);
 if (pf->irq < 0) {
  pr_err("Could not find an available irq for trigger %s, CONFIG_IIO_CONSUMERS_PER_TRIGGER=%d limit might be exceeded\n",
   trig->name, CONFIG_IIO_CONSUMERS_PER_TRIGGER);
  goto out_put_module;
 }


 ret = request_threaded_irq(pf->irq, pf->h, pf->thread,
       pf->type, pf->name,
       pf);
 if (ret < 0)
  goto out_put_irq;


 if (trig->ops && trig->ops->set_trigger_state && notinuse) {
  ret = trig->ops->set_trigger_state(trig, 1);
  if (ret < 0)
   goto out_free_irq;
 }






 if (pf->indio_dev->dev.parent == trig->dev.parent)
  trig->attached_own_device = 1;

 return ret;

out_free_irq:
 free_irq(pf->irq, pf);
out_put_irq:
 iio_trigger_put_irq(trig, pf->irq);
out_put_module:
 module_put(pf->indio_dev->driver_module);
 return ret;
}
