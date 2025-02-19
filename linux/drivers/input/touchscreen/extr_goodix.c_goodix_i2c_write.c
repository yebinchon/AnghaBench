
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int* buf; scalar_t__ len; int addr; scalar_t__ flags; } ;
struct i2c_client {int adapter; int addr; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int kfree (int*) ;
 int* kmalloc (int ,int ) ;
 int memcpy (int*,int const*,unsigned int) ;

__attribute__((used)) static int goodix_i2c_write(struct i2c_client *client, u16 reg, const u8 *buf,
       unsigned len)
{
 u8 *addr_buf;
 struct i2c_msg msg;
 int ret;

 addr_buf = kmalloc(len + 2, GFP_KERNEL);
 if (!addr_buf)
  return -ENOMEM;

 addr_buf[0] = reg >> 8;
 addr_buf[1] = reg & 0xFF;
 memcpy(&addr_buf[2], buf, len);

 msg.flags = 0;
 msg.addr = client->addr;
 msg.buf = addr_buf;
 msg.len = len + 2;

 ret = i2c_transfer(client->adapter, &msg, 1);
 kfree(addr_buf);
 return ret < 0 ? ret : (ret != 1 ? -EIO : 0);
}
