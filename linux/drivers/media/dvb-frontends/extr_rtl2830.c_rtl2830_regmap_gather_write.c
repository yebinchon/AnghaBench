
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EREMOTEIO ;
 int __i2c_transfer (int ,struct i2c_msg*,int) ;
 int dev_warn (int *,char*,int) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static int rtl2830_regmap_gather_write(void *context, const void *reg,
           size_t reg_len, const void *val,
           size_t val_len)
{
 struct i2c_client *client = context;
 int ret;
 u8 buf[256];
 struct i2c_msg msg[1] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 1 + val_len,
   .buf = buf,
  }
 };

 buf[0] = *(u8 const *)reg;
 memcpy(&buf[1], val, val_len);

 ret = __i2c_transfer(client->adapter, msg, 1);
 if (ret != 1) {
  dev_warn(&client->dev, "i2c reg write failed %d\n", ret);
  if (ret >= 0)
   ret = -EREMOTEIO;
  return ret;
 }
 return 0;
}
