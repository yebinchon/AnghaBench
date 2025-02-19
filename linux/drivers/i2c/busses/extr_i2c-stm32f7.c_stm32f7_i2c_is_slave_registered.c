
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f7_i2c_dev {scalar_t__* slave; } ;


 int STM32F7_I2C_MAX_SLAVE ;

__attribute__((used)) static bool stm32f7_i2c_is_slave_registered(struct stm32f7_i2c_dev *i2c_dev)
{
 int i;

 for (i = 0; i < STM32F7_I2C_MAX_SLAVE; i++) {
  if (i2c_dev->slave[i])
   return 1;
 }

 return 0;
}
