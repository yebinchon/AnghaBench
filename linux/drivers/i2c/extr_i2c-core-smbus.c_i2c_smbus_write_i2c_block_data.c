
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int * block; } ;
typedef int u8 ;
struct i2c_client {int flags; int addr; int adapter; } ;
typedef int s32 ;


 int I2C_SMBUS_BLOCK_MAX ;
 int I2C_SMBUS_I2C_BLOCK_DATA ;
 int I2C_SMBUS_WRITE ;
 int i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;
 int memcpy (int *,int const*,int ) ;

s32 i2c_smbus_write_i2c_block_data(const struct i2c_client *client, u8 command,
       u8 length, const u8 *values)
{
 union i2c_smbus_data data;

 if (length > I2C_SMBUS_BLOCK_MAX)
  length = I2C_SMBUS_BLOCK_MAX;
 data.block[0] = length;
 memcpy(data.block + 1, values, length);
 return i2c_smbus_xfer(client->adapter, client->addr, client->flags,
         I2C_SMBUS_WRITE, command,
         I2C_SMBUS_I2C_BLOCK_DATA, &data);
}
