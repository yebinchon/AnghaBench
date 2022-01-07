
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_msg {int flags; int len; char* buf; int addr; } ;
struct i2c_client {int flags; int adapter; int addr; } ;


 int I2C_M_TEN ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

int i2c_transfer_buffer_flags(const struct i2c_client *client, char *buf,
         int count, u16 flags)
{
 int ret;
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = flags | (client->flags & I2C_M_TEN),
  .len = count,
  .buf = buf,
 };

 ret = i2c_transfer(client->adapter, &msg, 1);





 return (ret == 1) ? count : ret;
}
