
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int lm85_is_fake(struct i2c_client *client)
{





 int i;
 u8 in_temp, fan;

 for (i = 0; i < 8; i++) {
  in_temp = i2c_smbus_read_byte_data(client, 0x20 + i);
  fan = i2c_smbus_read_byte_data(client, 0x28 + i);
  if (in_temp != 0x00 || fan != 0xff)
   return 0;
 }

 return 1;
}
