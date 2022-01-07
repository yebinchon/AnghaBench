
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_SMBUS_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_WORD_DATA ;

__attribute__((used)) static u32 xgene_slimpro_i2c_func(struct i2c_adapter *adapter)
{
 return I2C_FUNC_SMBUS_BYTE |
  I2C_FUNC_SMBUS_BYTE_DATA |
  I2C_FUNC_SMBUS_WORD_DATA |
  I2C_FUNC_SMBUS_BLOCK_DATA |
  I2C_FUNC_SMBUS_I2C_BLOCK;
}
