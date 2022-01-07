
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f7_i2c_dev {int dev; struct i2c_client** slave; } ;
struct i2c_client {int addr; } ;


 int ENODEV ;
 int STM32F7_I2C_MAX_SLAVE ;
 int dev_err (int ,char*,int ) ;

__attribute__((used)) static int stm32f7_i2c_get_slave_id(struct stm32f7_i2c_dev *i2c_dev,
        struct i2c_client *slave, int *id)
{
 int i;

 for (i = 0; i < STM32F7_I2C_MAX_SLAVE; i++) {
  if (i2c_dev->slave[i] == slave) {
   *id = i;
   return 0;
  }
 }

 dev_err(i2c_dev->dev, "Slave 0x%x not registered\n", slave->addr);

 return -ENODEV;
}
