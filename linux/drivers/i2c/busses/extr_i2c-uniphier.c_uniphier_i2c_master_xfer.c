
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_M_STOP ;
 int uniphier_i2c_check_bus_busy (struct i2c_adapter*) ;
 int uniphier_i2c_master_xfer_one (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int uniphier_i2c_master_xfer(struct i2c_adapter *adap,
        struct i2c_msg *msgs, int num)
{
 struct i2c_msg *msg, *emsg = msgs + num;
 int ret;

 ret = uniphier_i2c_check_bus_busy(adap);
 if (ret)
  return ret;

 for (msg = msgs; msg < emsg; msg++) {

  bool stop = (msg + 1 == emsg) || (msg->flags & I2C_M_STOP);

  ret = uniphier_i2c_master_xfer_one(adap, msg, stop);
  if (ret)
   return ret;
 }

 return num;
}
