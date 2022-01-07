
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int TSL4531_CONTROL ;
 int TSL4531_MODE_POWERDOWN ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int tsl4531_powerdown(struct i2c_client *client)
{
 return i2c_smbus_write_byte_data(client, TSL4531_CONTROL,
  TSL4531_MODE_POWERDOWN);
}
