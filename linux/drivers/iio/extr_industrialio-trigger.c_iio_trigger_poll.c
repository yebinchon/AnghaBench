
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_trigger {scalar_t__ subirq_base; TYPE_1__* subirqs; int use_count; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;


 int CONFIG_IIO_CONSUMERS_PER_TRIGGER ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int generic_handle_irq (scalar_t__) ;
 int iio_trigger_notify_done (struct iio_trigger*) ;

void iio_trigger_poll(struct iio_trigger *trig)
{
 int i;

 if (!atomic_read(&trig->use_count)) {
  atomic_set(&trig->use_count, CONFIG_IIO_CONSUMERS_PER_TRIGGER);

  for (i = 0; i < CONFIG_IIO_CONSUMERS_PER_TRIGGER; i++) {
   if (trig->subirqs[i].enabled)
    generic_handle_irq(trig->subirq_base + i);
   else
    iio_trigger_notify_done(trig);
  }
 }
}
