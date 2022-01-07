
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int dev; int adapter; int addr; } ;
typedef int buf ;


 int EINVAL ;
 int EREMOTEIO ;
 int I2C_LOCK_SEGMENT ;
 int __i2c_transfer (int ,struct i2c_msg*,int) ;
 int dev_dbg (int *,char*,int) ;
 int i2c_lock_bus (int ,int ) ;
 int i2c_unlock_bus (int ,int ) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static int af9013_wregs(struct i2c_client *client, u8 cmd, u16 reg,
   const u8 *val, int len, u8 lock)
{
 int ret;
 u8 buf[21];
 struct i2c_msg msg[1] = {
  {
   .addr = client->addr,
   .flags = 0,
   .len = 3 + len,
   .buf = buf,
  }
 };

 if (3 + len > sizeof(buf)) {
  ret = -EINVAL;
  goto err;
 }

 buf[0] = (reg >> 8) & 0xff;
 buf[1] = (reg >> 0) & 0xff;
 buf[2] = cmd;
 memcpy(&buf[3], val, len);

 if (lock)
  i2c_lock_bus(client->adapter, I2C_LOCK_SEGMENT);
 ret = __i2c_transfer(client->adapter, msg, 1);
 if (lock)
  i2c_unlock_bus(client->adapter, I2C_LOCK_SEGMENT);
 if (ret < 0) {
  goto err;
 } else if (ret != 1) {
  ret = -EREMOTEIO;
  goto err;
 }

 return 0;
err:
 dev_dbg(&client->dev, "failed %d\n", ret);
 return ret;
}
