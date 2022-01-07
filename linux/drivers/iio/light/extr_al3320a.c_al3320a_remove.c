
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int AL3320A_CONFIG_DISABLE ;
 int AL3320A_REG_CONFIG ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int al3320a_remove(struct i2c_client *client)
{
 return i2c_smbus_write_byte_data(client, AL3320A_REG_CONFIG,
      AL3320A_CONFIG_DISABLE);
}
