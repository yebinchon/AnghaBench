
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_adapter {int dev; TYPE_1__* algo; } ;
struct TYPE_2__ {int smbus_xfer_atomic; int master_xfer_atomic; } ;


 int EAGAIN ;
 int I2C_LOCK_SEGMENT ;
 int WARN (int,char*,int ) ;
 int dev_name (int *) ;
 scalar_t__ i2c_in_atomic_xfer_mode () ;
 int i2c_lock_bus (struct i2c_adapter*,int ) ;
 scalar_t__ i2c_trylock_bus (struct i2c_adapter*,int ) ;

__attribute__((used)) static inline int __i2c_lock_bus_helper(struct i2c_adapter *adap)
{
 int ret = 0;

 if (i2c_in_atomic_xfer_mode()) {
  WARN(!adap->algo->master_xfer_atomic && !adap->algo->smbus_xfer_atomic,
       "No atomic I2C transfer handler for '%s'\n", dev_name(&adap->dev));
  ret = i2c_trylock_bus(adap, I2C_LOCK_SEGMENT) ? 0 : -EAGAIN;
 } else {
  i2c_lock_bus(adap, I2C_LOCK_SEGMENT);
 }

 return ret;
}
