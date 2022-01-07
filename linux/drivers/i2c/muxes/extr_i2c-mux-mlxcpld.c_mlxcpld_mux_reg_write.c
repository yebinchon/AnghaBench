
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
struct mlxcpld_mux_plat_data {int sel_reg_addr; } ;
struct i2c_client {int flags; int addr; int dev; } ;
struct i2c_adapter {int dummy; } ;


 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_WRITE ;
 int __i2c_smbus_xfer (struct i2c_adapter*,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;
 struct mlxcpld_mux_plat_data* dev_get_platdata (int *) ;

__attribute__((used)) static int mlxcpld_mux_reg_write(struct i2c_adapter *adap,
     struct i2c_client *client, u8 val)
{
 struct mlxcpld_mux_plat_data *pdata = dev_get_platdata(&client->dev);
 union i2c_smbus_data data = { .byte = val };

 return __i2c_smbus_xfer(adap, client->addr, client->flags,
    I2C_SMBUS_WRITE, pdata->sel_reg_addr,
    I2C_SMBUS_BYTE_DATA, &data);
}
