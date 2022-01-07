
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
typedef scalar_t__ s32 ;


 int I2C_LOCK_SEGMENT ;
 scalar_t__ __i2c_lock_bus_helper (struct i2c_adapter*) ;
 scalar_t__ __i2c_smbus_xfer (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;
 int i2c_unlock_bus (struct i2c_adapter*,int ) ;

s32 i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
     unsigned short flags, char read_write,
     u8 command, int protocol, union i2c_smbus_data *data)
{
 s32 res;

 res = __i2c_lock_bus_helper(adapter);
 if (res)
  return res;

 res = __i2c_smbus_xfer(adapter, addr, flags, read_write,
          command, protocol, data);
 i2c_unlock_bus(adapter, I2C_LOCK_SEGMENT);

 return res;
}
