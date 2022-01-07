
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int * ops; } ;


 int stm32_lptim_trigger_ops ;

bool is_stm32_lptim_trigger(struct iio_trigger *trig)
{
 return (trig->ops == &stm32_lptim_trigger_ops);
}
