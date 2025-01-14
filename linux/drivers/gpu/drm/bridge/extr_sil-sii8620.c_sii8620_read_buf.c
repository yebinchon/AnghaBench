
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sii8620 {int error; struct device* dev; } ;
struct i2c_msg {int flags; int len; int* buf; int addr; } ;
struct i2c_client {int flags; int adapter; } ;
struct device {int dummy; } ;


 int EIO ;
 int I2C_M_RD ;
 int dev_dbg (struct device*,char*,int,int,int*,int) ;
 int dev_err (struct device*,char*,int,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int * sii8620_i2c_page ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static void sii8620_read_buf(struct sii8620 *ctx, u16 addr, u8 *buf, int len)
{
 struct device *dev = ctx->dev;
 struct i2c_client *client = to_i2c_client(dev);
 u8 data = addr;
 struct i2c_msg msg[] = {
  {
   .addr = sii8620_i2c_page[addr >> 8],
   .flags = client->flags,
   .len = 1,
   .buf = &data
  },
  {
   .addr = sii8620_i2c_page[addr >> 8],
   .flags = client->flags | I2C_M_RD,
   .len = len,
   .buf = buf
  },
 };
 int ret;

 if (ctx->error)
  return;

 ret = i2c_transfer(client->adapter, msg, 2);
 dev_dbg(dev, "read at %04x: %*ph, %d\n", addr, len, buf, ret);

 if (ret != 2) {
  dev_err(dev, "Read at %#06x of %d bytes failed with code %d.\n",
   addr, len, ret);
  ctx->error = ret < 0 ? ret : -EIO;
 }
}
