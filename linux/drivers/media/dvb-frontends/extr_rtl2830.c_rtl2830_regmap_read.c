
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void u8 ;
struct i2c_msg {size_t len; void* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int __i2c_transfer (int ,struct i2c_msg*,int) ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static int rtl2830_regmap_read(void *context, const void *reg_buf,
          size_t reg_size, void *val_buf, size_t val_size)
{
 struct i2c_client *client = context;
 int ret;
 struct i2c_msg msg[2] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = reg_size,
   .buf = (u8 *)reg_buf,
  }, {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .len = val_size,
   .buf = val_buf,
  }
 };

 ret = __i2c_transfer(client->adapter, msg, 2);
 if (ret != 2) {
  dev_warn(&client->dev, "i2c reg read failed %d\n", ret);
  if (ret >= 0)
   ret = -EREMOTEIO;
  return ret;
 }
 return 0;
}
