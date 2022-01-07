
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct sht3x_limit_commands {int read_command; } ;
struct sht3x_data {int* temperature_limits; int * humidity_limits; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef int __be16 ;


 size_t SHT3X_NUM_LIMIT_CMD ;
 int SHT3X_RESPONSE_LENGTH ;
 int be16_to_cpup (int *) ;
 struct sht3x_limit_commands* limit_commands ;
 int sht3x_extract_humidity (int) ;
 int sht3x_extract_temperature (int) ;
 int sht3x_read_from_command (struct i2c_client*,struct sht3x_data*,int ,char*,int,int ) ;

__attribute__((used)) static int limits_update(struct sht3x_data *data)
{
 int ret;
 u8 index;
 int temperature;
 u32 humidity;
 u16 raw;
 char buffer[SHT3X_RESPONSE_LENGTH];
 const struct sht3x_limit_commands *commands;
 struct i2c_client *client = data->client;

 for (index = 0; index < SHT3X_NUM_LIMIT_CMD; index++) {
  commands = &limit_commands[index];
  ret = sht3x_read_from_command(client, data,
           commands->read_command, buffer,
           SHT3X_RESPONSE_LENGTH, 0);

  if (ret)
   return ret;

  raw = be16_to_cpup((__be16 *)buffer);
  temperature = sht3x_extract_temperature((raw & 0x01ff) << 7);
  humidity = sht3x_extract_humidity(raw & 0xfe00);
  data->temperature_limits[index] = temperature;
  data->humidity_limits[index] = humidity;
 }

 return ret;
}
