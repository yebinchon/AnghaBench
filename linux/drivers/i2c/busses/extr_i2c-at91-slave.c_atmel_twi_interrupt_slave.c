
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct at91_twi_dev {int slave; scalar_t__ base; } ;
typedef int irqreturn_t ;


 unsigned int const AT91_TWI_EOSACC ;
 int AT91_TWI_IDR ;
 int AT91_TWI_IER ;
 int AT91_TWI_IMR ;
 scalar_t__ AT91_TWI_RHR ;
 unsigned int const AT91_TWI_RXRDY ;
 int AT91_TWI_SR ;
 unsigned int const AT91_TWI_SVACC ;
 unsigned int const AT91_TWI_SVREAD ;
 scalar_t__ AT91_TWI_THR ;
 unsigned int const AT91_TWI_TXRDY ;
 int I2C_SLAVE_READ_PROCESSED ;
 int I2C_SLAVE_READ_REQUESTED ;
 int I2C_SLAVE_STOP ;
 int I2C_SLAVE_WRITE_RECEIVED ;
 int I2C_SLAVE_WRITE_REQUESTED ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int const at91_twi_read (struct at91_twi_dev*,int ) ;
 int at91_twi_write (struct at91_twi_dev*,int ,unsigned int const) ;
 int i2c_slave_event (int ,int ,int *) ;
 int readb_relaxed (scalar_t__) ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t atmel_twi_interrupt_slave(int irq, void *dev_id)
{
 struct at91_twi_dev *dev = dev_id;
 const unsigned status = at91_twi_read(dev, AT91_TWI_SR);
 const unsigned irqstatus = status & at91_twi_read(dev, AT91_TWI_IMR);
 u8 value;

 if (!irqstatus)
  return IRQ_NONE;


 if (irqstatus & AT91_TWI_SVACC) {
  if (status & AT91_TWI_SVREAD) {
   i2c_slave_event(dev->slave,
     I2C_SLAVE_READ_REQUESTED, &value);
   writeb_relaxed(value, dev->base + AT91_TWI_THR);
   at91_twi_write(dev, AT91_TWI_IER,
           AT91_TWI_TXRDY | AT91_TWI_EOSACC);
  } else {
   i2c_slave_event(dev->slave,
     I2C_SLAVE_WRITE_REQUESTED, &value);
   at91_twi_write(dev, AT91_TWI_IER,
           AT91_TWI_RXRDY | AT91_TWI_EOSACC);
  }
  at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_SVACC);
 }


 if (irqstatus & AT91_TWI_TXRDY) {
  i2c_slave_event(dev->slave, I2C_SLAVE_READ_PROCESSED, &value);
  writeb_relaxed(value, dev->base + AT91_TWI_THR);
 }


 if (irqstatus & AT91_TWI_RXRDY) {
  value = readb_relaxed(dev->base + AT91_TWI_RHR);
  i2c_slave_event(dev->slave, I2C_SLAVE_WRITE_RECEIVED, &value);
 }


 if (irqstatus & AT91_TWI_EOSACC) {
  at91_twi_write(dev, AT91_TWI_IDR,
          AT91_TWI_TXRDY | AT91_TWI_RXRDY | AT91_TWI_EOSACC);
  at91_twi_write(dev, AT91_TWI_IER, AT91_TWI_SVACC);
  i2c_slave_event(dev->slave, I2C_SLAVE_STOP, &value);
 }

 return IRQ_HANDLED;
}
