
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 unsigned int I2C_FUNC_10BIT_ADDR ;
 unsigned int I2C_FUNC_I2C ;
 unsigned int I2C_FUNC_SMBUS_EMUL ;

__attribute__((used)) static unsigned int nmk_i2c_functionality(struct i2c_adapter *adap)
{
 return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL | I2C_FUNC_10BIT_ADDR;
}
