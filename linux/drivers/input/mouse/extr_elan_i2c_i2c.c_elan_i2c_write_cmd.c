
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int flags; int len; int * buf; int addr; } ;
struct i2c_client {int flags; int dev; int adapter; int addr; } ;
typedef int buf ;
typedef int __le16 ;


 int EIO ;
 int I2C_M_TEN ;
 int cpu_to_le16 (int ) ;
 int dev_err (int *,char*,int ,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int elan_i2c_write_cmd(struct i2c_client *client, u16 reg, u16 cmd)
{
 __le16 buf[] = {
  cpu_to_le16(reg),
  cpu_to_le16(cmd),
 };
 struct i2c_msg msg = {
  .addr = client->addr,
  .flags = client->flags & I2C_M_TEN,
  .len = sizeof(buf),
  .buf = (u8 *)buf,
 };
 int ret;

 ret = i2c_transfer(client->adapter, &msg, 1);
 if (ret != 1) {
  if (ret >= 0)
   ret = -EIO;
  dev_err(&client->dev, "writing cmd (0x%04x) failed: %d\n",
   reg, ret);
  return ret;
 }

 return 0;
}
