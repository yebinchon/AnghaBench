
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_10BIT_ADDR ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_NOSTART ;
 int I2C_FUNC_SMBUS_EMUL ;

__attribute__((used)) static uint32_t bcm_kona_i2c_functionality(struct i2c_adapter *adap)
{
 return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL | I2C_FUNC_10BIT_ADDR |
     I2C_FUNC_NOSTART;
}
