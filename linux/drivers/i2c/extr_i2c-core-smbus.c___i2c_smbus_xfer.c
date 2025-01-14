
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int retries; TYPE_1__* algo; scalar_t__ timeout; } ;
typedef int s32 ;
struct TYPE_2__ {int (* smbus_xfer ) (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;int (* smbus_xfer_atomic ) (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;int master_xfer; scalar_t__ master_xfer_atomic; } ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 unsigned short I2C_CLIENT_PEC ;
 unsigned short I2C_CLIENT_SCCB ;
 unsigned short I2C_M_TEN ;
 int __i2c_check_suspended (struct i2c_adapter*) ;
 scalar_t__ i2c_in_atomic_xfer_mode () ;
 int i2c_smbus_xfer_emulated (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;
 int trace_smbus_read (struct i2c_adapter*,int ,unsigned short,char,int ,int) ;
 int trace_smbus_reply (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*,int) ;
 int trace_smbus_result (struct i2c_adapter*,int ,unsigned short,char,int ,int,int) ;
 int trace_smbus_write (struct i2c_adapter*,int ,unsigned short,char,int ,int,union i2c_smbus_data*) ;

s32 __i2c_smbus_xfer(struct i2c_adapter *adapter, u16 addr,
       unsigned short flags, char read_write,
       u8 command, int protocol, union i2c_smbus_data *data)
{
 int (*xfer_func)(struct i2c_adapter *adap, u16 addr,
    unsigned short flags, char read_write,
    u8 command, int size, union i2c_smbus_data *data);
 unsigned long orig_jiffies;
 int try;
 s32 res;

 res = __i2c_check_suspended(adapter);
 if (res)
  return res;




 trace_smbus_write(adapter, addr, flags, read_write,
     command, protocol, data);
 trace_smbus_read(adapter, addr, flags, read_write,
    command, protocol);

 flags &= I2C_M_TEN | I2C_CLIENT_PEC | I2C_CLIENT_SCCB;

 xfer_func = adapter->algo->smbus_xfer;
 if (i2c_in_atomic_xfer_mode()) {
  if (adapter->algo->smbus_xfer_atomic)
   xfer_func = adapter->algo->smbus_xfer_atomic;
  else if (adapter->algo->master_xfer_atomic)
   xfer_func = ((void*)0);
 }

 if (xfer_func) {

  orig_jiffies = jiffies;
  for (res = 0, try = 0; try <= adapter->retries; try++) {
   res = xfer_func(adapter, addr, flags, read_write,
     command, protocol, data);
   if (res != -EAGAIN)
    break;
   if (time_after(jiffies,
           orig_jiffies + adapter->timeout))
    break;
  }

  if (res != -EOPNOTSUPP || !adapter->algo->master_xfer)
   goto trace;




 }

 res = i2c_smbus_xfer_emulated(adapter, addr, flags, read_write,
          command, protocol, data);

trace:

 trace_smbus_reply(adapter, addr, flags, read_write,
     command, protocol, data, res);
 trace_smbus_result(adapter, addr, flags, read_write,
      command, protocol, res);

 return res;
}
