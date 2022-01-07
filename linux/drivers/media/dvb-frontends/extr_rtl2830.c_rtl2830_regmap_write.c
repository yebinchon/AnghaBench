
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {size_t len; int * buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EREMOTEIO ;
 int __i2c_transfer (int ,struct i2c_msg*,int) ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static int rtl2830_regmap_write(void *context, const void *data, size_t count)
{
 struct i2c_client *client = context;
 int ret;
 struct i2c_msg msg[1] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = count,
   .buf = (u8 *)data,
  }
 };

 ret = __i2c_transfer(client->adapter, msg, 1);
 if (ret != 1) {
  dev_warn(&client->dev, "i2c reg write failed %d\n", ret);
  if (ret >= 0)
   ret = -EREMOTEIO;
  return ret;
 }
 return 0;
}
