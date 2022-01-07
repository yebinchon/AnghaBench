
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int flags; int addr; } ;


 int I2C_CLIENT_TEN ;

__attribute__((used)) static bool stm32f7_i2c_is_addr_match(struct i2c_client *slave, u32 addcode)
{
 u32 addr;

 if (!slave)
  return 0;

 if (slave->flags & I2C_CLIENT_TEN) {





  addr = slave->addr >> 8;
  addr |= 0x78;
  if (addr == addcode)
   return 1;
 } else {
  addr = slave->addr & 0x7f;
  if (addr == addcode)
   return 1;
 }

 return 0;
}
