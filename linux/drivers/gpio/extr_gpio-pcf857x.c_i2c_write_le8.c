
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte (struct i2c_client*,unsigned int) ;

__attribute__((used)) static int i2c_write_le8(struct i2c_client *client, unsigned data)
{
 return i2c_smbus_write_byte(client, data);
}
