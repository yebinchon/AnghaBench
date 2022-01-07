
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {int imr; } ;


 int AT91_TWI_IMR ;
 int AT91_TWI_INT_MASK ;
 int at91_disable_twi_interrupts (struct at91_twi_dev*) ;
 int at91_twi_read (struct at91_twi_dev*,int ) ;

void at91_twi_irq_save(struct at91_twi_dev *dev)
{
 dev->imr = at91_twi_read(dev, AT91_TWI_IMR) & AT91_TWI_INT_MASK;
 at91_disable_twi_interrupts(dev);
}
