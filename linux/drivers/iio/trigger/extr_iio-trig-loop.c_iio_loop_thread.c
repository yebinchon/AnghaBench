
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;


 int iio_trigger_poll_chained (struct iio_trigger*) ;
 int kthread_freezable_should_stop (int *) ;
 scalar_t__ likely (int) ;
 int set_freezable () ;

__attribute__((used)) static int iio_loop_thread(void *data)
{
 struct iio_trigger *trig = data;

 set_freezable();

 do {
  iio_trigger_poll_chained(trig);
 } while (likely(!kthread_freezable_should_stop(((void*)0))));

 return 0;
}
