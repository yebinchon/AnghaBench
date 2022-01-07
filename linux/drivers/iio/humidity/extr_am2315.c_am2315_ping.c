
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int AM2315_REG_HUM_MSB ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static void am2315_ping(struct i2c_client *client)
{
 i2c_smbus_read_byte_data(client, AM2315_REG_HUM_MSB);
}
