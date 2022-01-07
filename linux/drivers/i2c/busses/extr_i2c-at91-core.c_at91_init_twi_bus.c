
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {scalar_t__ slave_detected; } ;


 int AT91_TWI_CR ;
 int AT91_TWI_SWRST ;
 int at91_disable_twi_interrupts (struct at91_twi_dev*) ;
 int at91_init_twi_bus_master (struct at91_twi_dev*) ;
 int at91_init_twi_bus_slave (struct at91_twi_dev*) ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;

void at91_init_twi_bus(struct at91_twi_dev *dev)
{
 at91_disable_twi_interrupts(dev);
 at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SWRST);
 if (dev->slave_detected)
  at91_init_twi_bus_slave(dev);
 else
  at91_init_twi_bus_master(dev);
}
