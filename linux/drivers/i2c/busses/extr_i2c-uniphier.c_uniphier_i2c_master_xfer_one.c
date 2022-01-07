
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int buf; int len; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int EAGAIN ;
 int ETIMEDOUT ;
 int I2C_M_RD ;
 int i2c_recover_bus (struct i2c_adapter*) ;
 int uniphier_i2c_rx (struct i2c_adapter*,int ,int ,int ) ;
 int uniphier_i2c_stop (struct i2c_adapter*) ;
 int uniphier_i2c_tx (struct i2c_adapter*,int ,int ,int ) ;

__attribute__((used)) static int uniphier_i2c_master_xfer_one(struct i2c_adapter *adap,
     struct i2c_msg *msg, bool stop)
{
 bool is_read = msg->flags & I2C_M_RD;
 bool recovery = 0;
 int ret;

 if (is_read)
  ret = uniphier_i2c_rx(adap, msg->addr, msg->len, msg->buf);
 else
  ret = uniphier_i2c_tx(adap, msg->addr, msg->len, msg->buf);

 if (ret == -EAGAIN)
  return ret;

 if (ret == -ETIMEDOUT) {

  stop = 0;
  recovery = 1;
 }

 if (stop) {
  int ret2 = uniphier_i2c_stop(adap);

  if (ret2) {

   recovery = 1;
   ret = ret ?: ret2;
  }
 }

 if (recovery)
  i2c_recover_bus(adap);

 return ret;
}
