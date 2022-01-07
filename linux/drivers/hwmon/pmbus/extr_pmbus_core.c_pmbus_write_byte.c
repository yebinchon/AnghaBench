
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte (struct i2c_client*,int ) ;
 int pmbus_set_page (struct i2c_client*,int) ;

int pmbus_write_byte(struct i2c_client *client, int page, u8 value)
{
 int rv;

 rv = pmbus_set_page(client, page);
 if (rv < 0)
  return rv;

 return i2c_smbus_write_byte(client, value);
}
