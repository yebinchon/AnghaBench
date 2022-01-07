
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int (* functionality ) (struct i2c_adapter*) ;} ;


 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_BLOCK_PROC_CALL ;
 int I2C_FUNC_SMBUS_EMUL ;
 int I2C_FUNC_SMBUS_READ_BLOCK_DATA ;
 TYPE_1__ i2c_bit_algo ;
 int stub1 (struct i2c_adapter*) ;

__attribute__((used)) static u32 gmbus_func(struct i2c_adapter *adapter)
{
 return i2c_bit_algo.functionality(adapter) &
  (I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL |

  I2C_FUNC_SMBUS_READ_BLOCK_DATA |
  I2C_FUNC_SMBUS_BLOCK_PROC_CALL);
}
