
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sp2 {struct i2c_client* client; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct i2c_client {int addr; int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int I2C_M_RD ;
 int dev_dbg (int *,char*,int ,int ,int ) ;
 int dev_err (int *,char*,int ,int) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int sp2_read_i2c(struct sp2 *s, u8 reg, u8 *buf, int len)
{
 int ret;
 struct i2c_client *client = s->client;
 struct i2c_adapter *adap = client->adapter;
 struct i2c_msg msg[] = {
  {
   .addr = client->addr,
   .flags = 0,
   .buf = &reg,
   .len = 1
  }, {
   .addr = client->addr,
   .flags = I2C_M_RD,
   .buf = buf,
   .len = len
  }
 };

 ret = i2c_transfer(adap, msg, 2);

 if (ret != 2) {
  dev_err(&client->dev, "i2c read error, reg = 0x%02x, status = %d\n",
    reg, ret);
  if (ret < 0)
   return ret;
  else
   return -EIO;
 }

 dev_dbg(&s->client->dev, "addr=0x%04x, reg = 0x%02x, data = %02x\n",
    client->addr, reg, buf[0]);

 return 0;
}
