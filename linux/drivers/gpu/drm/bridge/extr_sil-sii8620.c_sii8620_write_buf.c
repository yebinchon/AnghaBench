
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sii8620 {int error; struct device* dev; } ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct i2c_client {int adapter; int flags; } ;
struct device {int dummy; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (struct device*,char*,int,int,int const*,int) ;
 int dev_err (struct device*,char*,int,int,int const*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int memcpy (int*,int const*,int) ;
 int * sii8620_i2c_page ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static void sii8620_write_buf(struct sii8620 *ctx, u16 addr, const u8 *buf,
         int len)
{
 struct device *dev = ctx->dev;
 struct i2c_client *client = to_i2c_client(dev);
 u8 data[2];
 struct i2c_msg msg = {
  .addr = sii8620_i2c_page[addr >> 8],
  .flags = client->flags,
  .len = len + 1,
 };
 int ret;

 if (ctx->error)
  return;

 if (len > 1) {
  msg.buf = kmalloc(len + 1, GFP_KERNEL);
  if (!msg.buf) {
   ctx->error = -ENOMEM;
   return;
  }
  memcpy(msg.buf + 1, buf, len);
 } else {
  msg.buf = data;
  msg.buf[1] = *buf;
 }

 msg.buf[0] = addr;

 ret = i2c_transfer(client->adapter, &msg, 1);
 dev_dbg(dev, "write at %04x: %*ph, %d\n", addr, len, buf, ret);

 if (ret != 1) {
  dev_err(dev, "Write at %#06x of %*ph failed with code %d.\n",
   addr, len, buf, ret);
  ctx->error = ret ?: -EIO;
 }

 if (len > 1)
  kfree(msg.buf);
}
