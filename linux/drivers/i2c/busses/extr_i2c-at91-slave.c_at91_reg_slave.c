
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int flags; int addr; int adapter; } ;
struct at91_twi_dev {int dev; int smr; struct i2c_client* slave; } ;


 int AT91_TWI_IER ;
 int AT91_TWI_SMR_SADR (int ) ;
 int AT91_TWI_SVACC ;
 int EAFNOSUPPORT ;
 int EBUSY ;
 int I2C_CLIENT_TEN ;
 int at91_init_twi_bus (struct at91_twi_dev*) ;
 int at91_twi_write (struct at91_twi_dev*,int ,int ) ;
 int dev_info (int ,char*,int ) ;
 struct at91_twi_dev* i2c_get_adapdata (int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int at91_reg_slave(struct i2c_client *slave)
{
 struct at91_twi_dev *dev = i2c_get_adapdata(slave->adapter);

 if (dev->slave)
  return -EBUSY;

 if (slave->flags & I2C_CLIENT_TEN)
  return -EAFNOSUPPORT;


 pm_runtime_get_sync(dev->dev);

 dev->slave = slave;
 dev->smr = AT91_TWI_SMR_SADR(slave->addr);

 at91_init_twi_bus(dev);
 at91_twi_write(dev, AT91_TWI_IER, AT91_TWI_SVACC);

 dev_info(dev->dev, "entered slave mode (ADR=%d)\n", slave->addr);

 return 0;
}
