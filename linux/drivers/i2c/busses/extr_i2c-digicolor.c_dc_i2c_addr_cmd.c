
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int flags; } ;


 int I2C_M_RD ;

__attribute__((used)) static u8 dc_i2c_addr_cmd(struct i2c_msg *msg)
{
 u8 addr = (msg->addr & 0x7f) << 1;

 if (msg->flags & I2C_M_RD)
  addr |= 1;

 return addr;
}
