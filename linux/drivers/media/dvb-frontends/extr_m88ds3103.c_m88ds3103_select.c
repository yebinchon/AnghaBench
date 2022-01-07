
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct m88ds3103_dev {struct i2c_client* client; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_msg {int len; char* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EREMOTEIO ;
 int __i2c_transfer (int ,struct i2c_msg*,int) ;
 int dev_warn (int *,char*,int) ;
 struct m88ds3103_dev* i2c_mux_priv (struct i2c_mux_core*) ;

__attribute__((used)) static int m88ds3103_select(struct i2c_mux_core *muxc, u32 chan)
{
 struct m88ds3103_dev *dev = i2c_mux_priv(muxc);
 struct i2c_client *client = dev->client;
 int ret;
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = 0,
  .len = 2,
  .buf = "\x03\x11",
 };


 ret = __i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1) {
  dev_warn(&client->dev, "i2c wr failed=%d\n", ret);
  if (ret >= 0)
   ret = -EREMOTEIO;
  return ret;
 }

 return 0;
}
