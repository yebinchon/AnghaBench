
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct sht3x_limit_commands {int write_command; } ;
struct sht3x_data {int* temperature_limits; int* humidity_limits; int i2c_lock; struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef int buffer ;
typedef int __be16 ;


 size_t EIO ;
 int SHT3X_CMD_LENGTH ;
 int SHT3X_CRC8_INIT ;
 int SHT3X_CRC8_LEN ;
 int SHT3X_WORD_LEN ;
 int cpu_to_be16 (int) ;
 char crc8 (int ,char*,int,int ) ;
 struct sht3x_data* dev_get_drvdata (struct device*) ;
 int i2c_master_send (struct i2c_client*,char*,int) ;
 struct sht3x_limit_commands* limit_commands ;
 int memcpy (char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sht3x_crc8_table ;

__attribute__((used)) static size_t limit_store(struct device *dev,
     size_t count,
     u8 index,
     int temperature,
     u32 humidity)
{
 char buffer[SHT3X_CMD_LENGTH + SHT3X_WORD_LEN + SHT3X_CRC8_LEN];
 char *position = buffer;
 int ret;
 u16 raw;
 struct sht3x_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 const struct sht3x_limit_commands *commands;

 commands = &limit_commands[index];

 memcpy(position, commands->write_command, SHT3X_CMD_LENGTH);
 position += SHT3X_CMD_LENGTH;






 raw = ((u32)(temperature + 45000) * 24543) >> (16 + 7);
 raw |= ((humidity * 42950) >> 16) & 0xfe00;

 *((__be16 *)position) = cpu_to_be16(raw);
 position += SHT3X_WORD_LEN;
 *position = crc8(sht3x_crc8_table,
    position - SHT3X_WORD_LEN,
    SHT3X_WORD_LEN,
    SHT3X_CRC8_INIT);

 mutex_lock(&data->i2c_lock);
 ret = i2c_master_send(client, buffer, sizeof(buffer));
 mutex_unlock(&data->i2c_lock);

 if (ret != sizeof(buffer))
  return ret < 0 ? ret : -EIO;

 data->temperature_limits[index] = temperature;
 data->humidity_limits[index] = humidity;
 return count;
}
