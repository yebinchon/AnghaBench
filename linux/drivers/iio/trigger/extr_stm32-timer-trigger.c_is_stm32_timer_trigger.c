
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int * ops; } ;


 int timer_trigger_ops ;

bool is_stm32_timer_trigger(struct iio_trigger *trig)
{
 return (trig->ops == &timer_trigger_ops);
}
