
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {unsigned short addr; int flags; } ;


 unsigned short I2C_ADDR_OFFSET_SLAVE ;
 unsigned short I2C_ADDR_OFFSET_TEN_BIT ;
 int I2C_CLIENT_SLAVE ;
 int I2C_CLIENT_TEN ;

__attribute__((used)) static unsigned short i2c_encode_flags_to_addr(struct i2c_client *client)
{
 unsigned short addr = client->addr;


 if (client->flags & I2C_CLIENT_TEN)
  addr |= I2C_ADDR_OFFSET_TEN_BIT;

 if (client->flags & I2C_CLIENT_SLAVE)
  addr |= I2C_ADDR_OFFSET_SLAVE;

 return addr;
}
