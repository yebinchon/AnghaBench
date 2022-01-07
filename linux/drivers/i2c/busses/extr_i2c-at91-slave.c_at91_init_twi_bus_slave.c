
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {scalar_t__ smr; scalar_t__ slave_detected; } ;


 int AT91_TWI_CR ;
 scalar_t__ AT91_TWI_MSDIS ;
 int AT91_TWI_SMR ;
 scalar_t__ AT91_TWI_SVEN ;
 int at91_twi_write (struct at91_twi_dev*,int ,scalar_t__) ;

void at91_init_twi_bus_slave(struct at91_twi_dev *dev)
{
 at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_MSDIS);
 if (dev->slave_detected && dev->smr) {
  at91_twi_write(dev, AT91_TWI_SMR, dev->smr);
  at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SVEN);
 }
}
