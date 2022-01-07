
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int _pmbus_write_word_data (struct i2c_client*,int,int ,int ) ;
 int * pmbus_fan_command_registers ;
 int * pmbus_fan_config_registers ;
 int pmbus_read_byte_data (struct i2c_client*,int,int ) ;
 int pmbus_write_byte_data (struct i2c_client*,int,int ,int) ;

int pmbus_update_fan(struct i2c_client *client, int page, int id,
       u8 config, u8 mask, u16 command)
{
 int from;
 int rv;
 u8 to;

 from = pmbus_read_byte_data(client, page,
        pmbus_fan_config_registers[id]);
 if (from < 0)
  return from;

 to = (from & ~mask) | (config & mask);
 if (to != from) {
  rv = pmbus_write_byte_data(client, page,
        pmbus_fan_config_registers[id], to);
  if (rv < 0)
   return rv;
 }

 return _pmbus_write_word_data(client, page,
          pmbus_fan_command_registers[id], command);
}
