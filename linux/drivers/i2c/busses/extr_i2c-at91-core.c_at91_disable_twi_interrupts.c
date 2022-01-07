
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {int dummy; } ;


 int AT91_TWI_IDR ;
 int AT91_TWI_INT_MASK ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;

void at91_disable_twi_interrupts(struct at91_twi_dev *dev)
{
 at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_INT_MASK);
}
