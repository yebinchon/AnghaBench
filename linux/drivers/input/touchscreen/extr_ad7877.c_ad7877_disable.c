
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad7877 {int disabled; int mutex; int timer; TYPE_1__* spi; } ;
struct TYPE_2__ {int irq; } ;


 int ad7877_ts_event_release (struct ad7877*) ;
 scalar_t__ del_timer_sync (int *) ;
 int disable_irq (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ad7877_disable(void *data)
{
 struct ad7877 *ts = data;

 mutex_lock(&ts->mutex);

 if (!ts->disabled) {
  ts->disabled = 1;
  disable_irq(ts->spi->irq);

  if (del_timer_sync(&ts->timer))
   ad7877_ts_event_release(ts);
 }






 mutex_unlock(&ts->mutex);
}
