
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 scalar_t__ i2c_smbus_read_byte (struct i2c_client*) ;

__attribute__((used)) static int i2c_read_le8(struct i2c_client *client)
{
 return (int)i2c_smbus_read_byte(client);
}
