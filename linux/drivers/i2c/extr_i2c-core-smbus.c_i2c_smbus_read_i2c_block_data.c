
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int* block; } ;
typedef scalar_t__ u8 ;
struct i2c_client {int flags; int addr; int adapter; } ;
typedef int s32 ;


 scalar_t__ I2C_SMBUS_BLOCK_MAX ;
 int I2C_SMBUS_I2C_BLOCK_DATA ;
 int I2C_SMBUS_READ ;
 int i2c_smbus_xfer (int ,int ,int ,int ,scalar_t__,int ,union i2c_smbus_data*) ;
 int memcpy (scalar_t__*,int*,int) ;

s32 i2c_smbus_read_i2c_block_data(const struct i2c_client *client, u8 command,
      u8 length, u8 *values)
{
 union i2c_smbus_data data;
 int status;

 if (length > I2C_SMBUS_BLOCK_MAX)
  length = I2C_SMBUS_BLOCK_MAX;
 data.block[0] = length;
 status = i2c_smbus_xfer(client->adapter, client->addr, client->flags,
    I2C_SMBUS_READ, command,
    I2C_SMBUS_I2C_BLOCK_DATA, &data);
 if (status < 0)
  return status;

 memcpy(values, &data.block[1], data.block[0]);
 return data.block[0];
}
