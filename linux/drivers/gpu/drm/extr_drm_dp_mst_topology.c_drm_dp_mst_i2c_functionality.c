
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_FUNC_10BIT_ADDR ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BLOCK_PROC_CALL ;
 int I2C_FUNC_SMBUS_EMUL ;
 int I2C_FUNC_SMBUS_READ_BLOCK_DATA ;

__attribute__((used)) static u32 drm_dp_mst_i2c_functionality(struct i2c_adapter *adapter)
{
 return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL |
        I2C_FUNC_SMBUS_READ_BLOCK_DATA |
        I2C_FUNC_SMBUS_BLOCK_PROC_CALL |
        I2C_FUNC_10BIT_ADDR;
}
