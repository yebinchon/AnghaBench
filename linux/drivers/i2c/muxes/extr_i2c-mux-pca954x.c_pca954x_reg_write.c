
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
struct i2c_client {int flags; int addr; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_SMBUS_BYTE ;
 int I2C_SMBUS_WRITE ;
 int __i2c_smbus_xfer (struct i2c_adapter*,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;

__attribute__((used)) static int pca954x_reg_write(struct i2c_adapter *adap,
        struct i2c_client *client, u8 val)
{
 union i2c_smbus_data dummy;

 return __i2c_smbus_xfer(adap, client->addr, client->flags,
    I2C_SMBUS_WRITE, val,
    I2C_SMBUS_BYTE, &dummy);
}
