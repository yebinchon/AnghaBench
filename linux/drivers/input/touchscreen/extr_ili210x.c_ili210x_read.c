
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {size_t len; void* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;


 int EIO ;
 int I2C_M_RD ;
 int dev_err (int *,char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int ili210x_read(struct i2c_client *client, void *buf, size_t len)
{
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = I2C_M_RD,
  .len = len,
  .buf = buf,
 };

 if (i2c_transfer(client->adapter, &msg, 1) != 1) {
  dev_err(&client->dev, "i2c transfer failed\n");
  return -EIO;
 }

 return 0;
}
