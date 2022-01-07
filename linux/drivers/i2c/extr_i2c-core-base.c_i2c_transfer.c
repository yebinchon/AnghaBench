
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dev; TYPE_1__* algo; } ;
struct TYPE_2__ {int master_xfer; } ;


 int EOPNOTSUPP ;
 int I2C_LOCK_SEGMENT ;
 int __i2c_lock_bus_helper (struct i2c_adapter*) ;
 int __i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int dev_dbg (int *,char*) ;
 int i2c_unlock_bus (struct i2c_adapter*,int ) ;

int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 int ret;

 if (!adap->algo->master_xfer) {
  dev_dbg(&adap->dev, "I2C level transfers not supported\n");
  return -EOPNOTSUPP;
 }
 ret = __i2c_lock_bus_helper(adap);
 if (ret)
  return ret;

 ret = __i2c_transfer(adap, msgs, num);
 i2c_unlock_bus(adap, I2C_LOCK_SEGMENT);

 return ret;
}
