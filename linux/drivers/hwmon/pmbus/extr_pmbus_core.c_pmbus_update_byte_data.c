
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int pmbus_read_byte_data (struct i2c_client*,int,int) ;
 int pmbus_write_byte_data (struct i2c_client*,int,int,unsigned int) ;

int pmbus_update_byte_data(struct i2c_client *client, int page, u8 reg,
      u8 mask, u8 value)
{
 unsigned int tmp;
 int rv;

 rv = pmbus_read_byte_data(client, page, reg);
 if (rv < 0)
  return rv;

 tmp = (rv & ~mask) | (value & mask);

 if (tmp != rv)
  rv = pmbus_write_byte_data(client, page, reg, tmp);

 return rv;
}
