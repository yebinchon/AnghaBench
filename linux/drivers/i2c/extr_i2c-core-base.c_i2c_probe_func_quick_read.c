
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int I2C_SMBUS_QUICK ;
 int I2C_SMBUS_READ ;
 scalar_t__ i2c_smbus_xfer (struct i2c_adapter*,unsigned short,int ,int ,int ,int ,int *) ;

int i2c_probe_func_quick_read(struct i2c_adapter *adap, unsigned short addr)
{
 return i2c_smbus_xfer(adap, addr, 0, I2C_SMBUS_READ, 0,
         I2C_SMBUS_QUICK, ((void*)0)) >= 0;
}
