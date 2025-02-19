
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_client {int addr; int adapter; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int*,void const*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

int cyttsp_i2c_write_block_data(struct device *dev, u8 *xfer_buf,
           u16 addr, u8 length, const void *values)
{
 struct i2c_client *client = to_i2c_client(dev);
 u8 client_addr = client->addr | ((addr >> 8) & 0x1);
 u8 addr_lo = addr & 0xFF;
 struct i2c_msg msgs[] = {
  {
   .addr = client_addr,
   .flags = 0,
   .len = length + 1,
   .buf = xfer_buf,
  },
 };
 int retval;

 xfer_buf[0] = addr_lo;
 memcpy(&xfer_buf[1], values, length);

 retval = i2c_transfer(client->adapter, msgs, ARRAY_SIZE(msgs));
 if (retval < 0)
  return retval;

 return retval != ARRAY_SIZE(msgs) ? -EIO : 0;
}
