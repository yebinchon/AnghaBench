
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct max6642_data {void** temp_high; } ;
struct i2c_client {int dummy; } ;


 int MAX6642_REG_R_CONFIG ;
 int MAX6642_REG_R_LOCAL_HIGH ;
 int MAX6642_REG_R_REMOTE_HIGH ;
 int MAX6642_REG_W_CONFIG ;
 void* i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void max6642_init_client(struct max6642_data *data,
    struct i2c_client *client)
{
 u8 config;




 config = i2c_smbus_read_byte_data(client, MAX6642_REG_R_CONFIG);
 if (config & 0x40)
  i2c_smbus_write_byte_data(client, MAX6642_REG_W_CONFIG,
       config & 0xBF);

 data->temp_high[0] = i2c_smbus_read_byte_data(client,
    MAX6642_REG_R_LOCAL_HIGH);
 data->temp_high[1] = i2c_smbus_read_byte_data(client,
    MAX6642_REG_R_REMOTE_HIGH);
}
