
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int flags; int len; int addr; } ;
struct i2c_adapter {int dev; } ;


 int EOPNOTSUPP ;
 int I2C_M_RD ;
 int dev_err_ratelimited (int *,char*,char*,int ,int ,char*) ;

__attribute__((used)) static int i2c_quirk_error(struct i2c_adapter *adap, struct i2c_msg *msg, char *err_msg)
{
 dev_err_ratelimited(&adap->dev, "adapter quirk: %s (addr 0x%04x, size %u, %s)\n",
       err_msg, msg->addr, msg->len,
       msg->flags & I2C_M_RD ? "read" : "write");
 return -EOPNOTSUPP;
}
