
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp401_data {int update_interval; } ;
struct i2c_client {int dummy; } ;


 int TMP401_CONFIG_READ ;
 int TMP401_CONFIG_SHUTDOWN ;
 int TMP401_CONFIG_WRITE ;
 int TMP401_CONVERSION_RATE_WRITE ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static int tmp401_init_client(struct tmp401_data *data,
         struct i2c_client *client)
{
 int config, config_orig, status = 0;


 i2c_smbus_write_byte_data(client, TMP401_CONVERSION_RATE_WRITE, 5);
 data->update_interval = 500;


 config = i2c_smbus_read_byte_data(client, TMP401_CONFIG_READ);
 if (config < 0)
  return config;

 config_orig = config;
 config &= ~TMP401_CONFIG_SHUTDOWN;

 if (config != config_orig)
  status = i2c_smbus_write_byte_data(client,
         TMP401_CONFIG_WRITE,
         config);

 return status;
}
