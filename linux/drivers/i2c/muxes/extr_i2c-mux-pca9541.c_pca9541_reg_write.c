
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
struct i2c_client {int flags; int addr; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_WRITE ;
 int __i2c_smbus_xfer (struct i2c_adapter*,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;

__attribute__((used)) static int pca9541_reg_write(struct i2c_client *client, u8 command, u8 val)
{
 struct i2c_adapter *adap = client->adapter;
 union i2c_smbus_data data = { .byte = val };

 return __i2c_smbus_xfer(adap, client->addr, client->flags,
    I2C_SMBUS_WRITE, command,
    I2C_SMBUS_BYTE_DATA, &data);
}
