
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_10BIT_ADDR ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_NOSTART ;
 int I2C_FUNC_PROTOCOL_MANGLING ;
 int I2C_FUNC_SMBUS_EMUL ;

__attribute__((used)) static u32 tegra_bpmp_i2c_func(struct i2c_adapter *adapter)
{
 return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL | I2C_FUNC_10BIT_ADDR |
        I2C_FUNC_PROTOCOL_MANGLING | I2C_FUNC_NOSTART;
}
