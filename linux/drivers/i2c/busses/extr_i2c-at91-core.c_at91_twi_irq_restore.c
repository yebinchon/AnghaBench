
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {int imr; } ;


 int AT91_TWI_IER ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;

void at91_twi_irq_restore(struct at91_twi_dev *dev)
{
 at91_twi_write(dev, AT91_TWI_IER, dev->imr);
}
