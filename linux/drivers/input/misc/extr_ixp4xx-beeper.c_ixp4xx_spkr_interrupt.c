
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int * IXP4XX_OSST ;
 int IXP4XX_OSST_TIMER_2_PEND ;
 int gpio_get_value (unsigned int) ;
 int gpio_set_value (unsigned int,int) ;

__attribute__((used)) static irqreturn_t ixp4xx_spkr_interrupt(int irq, void *dev_id)
{
 unsigned int pin = (unsigned int) dev_id;


 *IXP4XX_OSST = IXP4XX_OSST_TIMER_2_PEND;


 gpio_set_value(pin, !gpio_get_value(pin));

 return IRQ_HANDLED;
}
