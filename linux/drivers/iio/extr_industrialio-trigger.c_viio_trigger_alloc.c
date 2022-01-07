
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int * bus; int * type; } ;
struct TYPE_4__ {int * irq_unmask; int * irq_mask; int * name; } ;
struct iio_trigger {scalar_t__ subirq_base; TYPE_2__ dev; TYPE_1__ subirq_chip; int * name; int pool_lock; } ;


 int CONFIG_IIO_CONSUMERS_PER_TRIGGER ;
 int GFP_KERNEL ;
 int IRQ_NOAUTOEN ;
 int IRQ_NOPROBE ;
 int IRQ_NOREQUEST ;
 int device_initialize (TYPE_2__*) ;
 int get_device (TYPE_2__*) ;
 int handle_simple_irq ;
 int iio_bus_type ;
 int iio_trig_subirqmask ;
 int iio_trig_subirqunmask ;
 int iio_trig_type ;
 scalar_t__ irq_alloc_descs (int,int ,int,int ) ;
 int irq_free_descs (scalar_t__,int) ;
 int irq_modify_status (scalar_t__,int,int ) ;
 int irq_set_chip (scalar_t__,TYPE_1__*) ;
 int irq_set_handler (scalar_t__,int *) ;
 int kfree (struct iio_trigger*) ;
 int * kvasprintf (int ,char const*,int ) ;
 struct iio_trigger* kzalloc (int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static struct iio_trigger *viio_trigger_alloc(const char *fmt, va_list vargs)
{
 struct iio_trigger *trig;
 int i;

 trig = kzalloc(sizeof *trig, GFP_KERNEL);
 if (!trig)
  return ((void*)0);

 trig->dev.type = &iio_trig_type;
 trig->dev.bus = &iio_bus_type;
 device_initialize(&trig->dev);

 mutex_init(&trig->pool_lock);
 trig->subirq_base = irq_alloc_descs(-1, 0,
         CONFIG_IIO_CONSUMERS_PER_TRIGGER,
         0);
 if (trig->subirq_base < 0)
  goto free_trig;

 trig->name = kvasprintf(GFP_KERNEL, fmt, vargs);
 if (trig->name == ((void*)0))
  goto free_descs;

 trig->subirq_chip.name = trig->name;
 trig->subirq_chip.irq_mask = &iio_trig_subirqmask;
 trig->subirq_chip.irq_unmask = &iio_trig_subirqunmask;
 for (i = 0; i < CONFIG_IIO_CONSUMERS_PER_TRIGGER; i++) {
  irq_set_chip(trig->subirq_base + i, &trig->subirq_chip);
  irq_set_handler(trig->subirq_base + i, &handle_simple_irq);
  irq_modify_status(trig->subirq_base + i,
      IRQ_NOREQUEST | IRQ_NOAUTOEN, IRQ_NOPROBE);
 }
 get_device(&trig->dev);

 return trig;

free_descs:
 irq_free_descs(trig->subirq_base, CONFIG_IIO_CONSUMERS_PER_TRIGGER);
free_trig:
 kfree(trig);
 return ((void*)0);
}
