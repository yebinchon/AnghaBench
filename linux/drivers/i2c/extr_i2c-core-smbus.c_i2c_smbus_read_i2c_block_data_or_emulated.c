
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int adapter; } ;
typedef int s32 ;


 int EOPNOTSUPP ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int I2C_SMBUS_BLOCK_MAX ;
 scalar_t__ i2c_check_functionality (int ,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client const*,int) ;
 int i2c_smbus_read_i2c_block_data (struct i2c_client const*,int,int,int*) ;
 int i2c_smbus_read_word_data (struct i2c_client const*,int) ;

s32 i2c_smbus_read_i2c_block_data_or_emulated(const struct i2c_client *client,
           u8 command, u8 length, u8 *values)
{
 u8 i = 0;
 int status;

 if (length > I2C_SMBUS_BLOCK_MAX)
  length = I2C_SMBUS_BLOCK_MAX;

 if (i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_READ_I2C_BLOCK))
  return i2c_smbus_read_i2c_block_data(client, command, length, values);

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_READ_BYTE_DATA))
  return -EOPNOTSUPP;

 if (i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_READ_WORD_DATA)) {
  while ((i + 2) <= length) {
   status = i2c_smbus_read_word_data(client, command + i);
   if (status < 0)
    return status;
   values[i] = status & 0xff;
   values[i + 1] = status >> 8;
   i += 2;
  }
 }

 while (i < length) {
  status = i2c_smbus_read_byte_data(client, command + i);
  if (status < 0)
   return status;
  values[i] = status;
  i++;
 }

 return i;
}
