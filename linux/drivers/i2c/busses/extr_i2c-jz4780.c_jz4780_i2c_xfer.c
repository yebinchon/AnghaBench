
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct jz4780_i2c {TYPE_1__ adap; } ;
struct i2c_msg {int flags; int len; int buf; int addr; } ;
struct i2c_adapter {struct jz4780_i2c* algo_data; } ;


 int EIO ;
 int I2C_M_RD ;
 int JZ4780_I2C_TAR ;
 int dev_err (int *,char*) ;
 int jz4780_i2c_cleanup (struct jz4780_i2c*) ;
 int jz4780_i2c_prepare (struct jz4780_i2c*) ;
 int jz4780_i2c_readw (struct jz4780_i2c*,int ) ;
 int jz4780_i2c_set_target (struct jz4780_i2c*,int ) ;
 int jz4780_i2c_xfer_read (struct jz4780_i2c*,int ,int ,int,int) ;
 int jz4780_i2c_xfer_write (struct jz4780_i2c*,int ,int ,int,int) ;

__attribute__((used)) static int jz4780_i2c_xfer(struct i2c_adapter *adap, struct i2c_msg *msg,
      int count)
{
 int i = -EIO;
 int ret = 0;
 struct jz4780_i2c *i2c = adap->algo_data;

 ret = jz4780_i2c_prepare(i2c);
 if (ret) {
  dev_err(&i2c->adap.dev, "I2C prepare failed\n");
  goto out;
 }

 if (msg->addr != jz4780_i2c_readw(i2c, JZ4780_I2C_TAR)) {
  ret = jz4780_i2c_set_target(i2c, msg->addr);
  if (ret)
   goto out;
 }
 for (i = 0; i < count; i++, msg++) {
  if (msg->flags & I2C_M_RD)
   ret = jz4780_i2c_xfer_read(i2c, msg->buf, msg->len,
         count, i);
  else
   ret = jz4780_i2c_xfer_write(i2c, msg->buf, msg->len,
          count, i);

  if (ret)
   goto out;
 }

 ret = i;

out:
 jz4780_i2c_cleanup(i2c);
 return ret;
}
