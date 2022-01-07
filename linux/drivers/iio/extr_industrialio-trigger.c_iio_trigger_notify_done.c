
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_trigger {TYPE_1__* ops; int use_count; } ;
struct TYPE_2__ {scalar_t__ (* try_reenable ) (struct iio_trigger*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int iio_trigger_poll (struct iio_trigger*) ;
 scalar_t__ stub1 (struct iio_trigger*) ;

void iio_trigger_notify_done(struct iio_trigger *trig)
{
 if (atomic_dec_and_test(&trig->use_count) && trig->ops &&
     trig->ops->try_reenable)
  if (trig->ops->try_reenable(trig))

   iio_trigger_poll(trig);
}
