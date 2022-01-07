
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int flags; int len; char* buf; int addr; } ;
struct i2c_client {int flags; int adapter; int addr; } ;
struct ad5686_state {TYPE_1__* data; int dev; } ;
struct TYPE_2__ {char* d8; int d16; int d32; } ;


 int AD5686_ADDR (int ) ;
 int AD5686_CMD (int ) ;
 int AD5686_CMD_NOOP ;
 int I2C_M_RD ;
 int be16_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static int ad5686_i2c_read(struct ad5686_state *st, u8 addr)
{
 struct i2c_client *i2c = to_i2c_client(st->dev);
 struct i2c_msg msg[2] = {
  {
   .addr = i2c->addr,
   .flags = i2c->flags,
   .len = 3,
   .buf = &st->data[0].d8[1],
  },
  {
   .addr = i2c->addr,
   .flags = i2c->flags | I2C_M_RD,
   .len = 2,
   .buf = (char *)&st->data[0].d16,
  },
 };
 int ret;

 st->data[0].d32 = cpu_to_be32(AD5686_CMD(AD5686_CMD_NOOP) |
          AD5686_ADDR(addr) |
          0x00);

 ret = i2c_transfer(i2c->adapter, msg, 2);
 if (ret < 0)
  return ret;

 return be16_to_cpu(st->data[0].d16);
}
