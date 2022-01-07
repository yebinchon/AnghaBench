
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
struct i2c_client {int flags; int addr; int adapter; } ;
typedef int s32 ;


 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_WRITE ;
 int i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;

s32 i2c_smbus_write_byte_data(const struct i2c_client *client, u8 command,
         u8 value)
{
 union i2c_smbus_data data;
 data.byte = value;
 return i2c_smbus_xfer(client->adapter, client->addr, client->flags,
         I2C_SMBUS_WRITE, command,
         I2C_SMBUS_BYTE_DATA, &data);
}
