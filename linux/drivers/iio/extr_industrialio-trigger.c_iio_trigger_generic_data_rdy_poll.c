
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int iio_trigger_poll (void*) ;

irqreturn_t iio_trigger_generic_data_rdy_poll(int irq, void *private)
{
 iio_trigger_poll(private);
 return IRQ_HANDLED;
}
