
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int * buf; int addr; scalar_t__ flags; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int __be16 ;


 int ARRAY_SIZE (struct i2c_msg*) ;
 int EIO ;
 scalar_t__ I2C_M_RD ;
 int cpu_to_be16 (int ) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int goodix_i2c_read(struct i2c_client *client,
      u16 reg, u8 *buf, int len)
{
 struct i2c_msg msgs[2];
 __be16 wbuf = cpu_to_be16(reg);
 int ret;

 msgs[0].flags = 0;
 msgs[0].addr = client->addr;
 msgs[0].len = 2;
 msgs[0].buf = (u8 *)&wbuf;

 msgs[1].flags = I2C_M_RD;
 msgs[1].addr = client->addr;
 msgs[1].len = len;
 msgs[1].buf = buf;

 ret = i2c_transfer(client->adapter, msgs, 2);
 return ret < 0 ? ret : (ret != ARRAY_SIZE(msgs) ? -EIO : 0);
}
