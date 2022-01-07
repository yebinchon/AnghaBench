
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dev {int twi_cwgr_reg; scalar_t__ fifo_size; } ;


 int AT91_TWI_CR ;
 int AT91_TWI_CWGR ;
 int AT91_TWI_FIFOEN ;
 int AT91_TWI_MSEN ;
 int AT91_TWI_SVDIS ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;

void at91_init_twi_bus_master(struct at91_twi_dev *dev)
{

 if (dev->fifo_size)
  at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_FIFOEN);
 at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_MSEN);
 at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_SVDIS);
 at91_twi_write(dev, AT91_TWI_CWGR, dev->twi_cwgr_reg);
}
