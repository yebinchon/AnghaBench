
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int flags; int len; int * buf; int addr; } ;
struct i2c_client {int flags; int adapter; int addr; } ;
typedef int buf ;
typedef int __le16 ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int I2C_M_RD ;
 int I2C_M_TEN ;
 int cpu_to_le16 (int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int elan_i2c_read_block(struct i2c_client *client,
          u16 reg, u8 *val, u16 len)
{
 __le16 buf[] = {
  cpu_to_le16(reg),
 };
 struct i2c_msg msgs[] = {
  {
   .addr = client->addr,
   .flags = client->flags & I2C_M_TEN,
   .len = sizeof(buf),
   .buf = (u8 *)buf,
  },
  {
   .addr = client->addr,
   .flags = (client->flags & I2C_M_TEN) | I2C_M_RD,
   .len = len,
   .buf = val,
  }
 };
 int ret;

 ret = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 return ret == ARRAY_SIZE(msgs) ? 0 : (ret < 0 ? ret : -EIO);
}
