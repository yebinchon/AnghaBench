
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int LM92_REG_CONFIG ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void lm92_init_client(struct i2c_client *client)
{
 u8 config;


 config = i2c_smbus_read_byte_data(client, LM92_REG_CONFIG);
 if (config & 0x01)
  i2c_smbus_write_byte_data(client, LM92_REG_CONFIG,
       config & 0xFE);
}
