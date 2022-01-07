
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int MAX1619_REG_R_CONFIG ;
 int MAX1619_REG_W_CONFIG ;
 int MAX1619_REG_W_CONVRATE ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void max1619_init_client(struct i2c_client *client)
{
 u8 config;




 i2c_smbus_write_byte_data(client, MAX1619_REG_W_CONVRATE,
      5);
 config = i2c_smbus_read_byte_data(client, MAX1619_REG_R_CONFIG);
 if (config & 0x40)
  i2c_smbus_write_byte_data(client, MAX1619_REG_W_CONFIG,
       config & 0xBF);
}
