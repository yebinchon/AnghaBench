
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f7_i2c_dev {int * slave; struct device* dev; } ;
struct i2c_client {int flags; int addr; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int I2C_CLIENT_PEC ;
 int STM32F7_I2C_MAX_SLAVE ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static int stm32f7_i2c_get_free_slave_id(struct stm32f7_i2c_dev *i2c_dev,
      struct i2c_client *slave, int *id)
{
 struct device *dev = i2c_dev->dev;
 int i;





 for (i = 0; i < STM32F7_I2C_MAX_SLAVE; i++) {
  if (i == 1 && (slave->flags & I2C_CLIENT_PEC))
   continue;
  if (!i2c_dev->slave[i]) {
   *id = i;
   return 0;
  }
 }

 dev_err(dev, "Slave 0x%x could not be registered\n", slave->addr);

 return -EINVAL;
}
