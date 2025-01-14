
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_10BIT_ADDR ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SLAVE ;
 int I2C_FUNC_SMBUS_BLOCK_DATA ;
 int I2C_FUNC_SMBUS_BLOCK_PROC_CALL ;
 int I2C_FUNC_SMBUS_BYTE ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int I2C_FUNC_SMBUS_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_PEC ;
 int I2C_FUNC_SMBUS_PROC_CALL ;
 int I2C_FUNC_SMBUS_QUICK ;
 int I2C_FUNC_SMBUS_WORD_DATA ;

__attribute__((used)) static u32 stm32f7_i2c_func(struct i2c_adapter *adap)
{
 return I2C_FUNC_I2C | I2C_FUNC_10BIT_ADDR | I2C_FUNC_SLAVE |
  I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
  I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
  I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_BLOCK_PROC_CALL |
  I2C_FUNC_SMBUS_PROC_CALL | I2C_FUNC_SMBUS_PEC |
  I2C_FUNC_SMBUS_I2C_BLOCK;
}
