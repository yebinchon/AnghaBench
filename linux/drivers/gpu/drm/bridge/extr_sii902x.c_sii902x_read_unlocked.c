
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; } ;
typedef int u8 ;
struct i2c_client {int flags; int addr; int adapter; } ;


 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_READ ;
 int __i2c_smbus_xfer (int ,int ,int ,int ,int ,int ,union i2c_smbus_data*) ;

__attribute__((used)) static int sii902x_read_unlocked(struct i2c_client *i2c, u8 reg, u8 *val)
{
 union i2c_smbus_data data;
 int ret;

 ret = __i2c_smbus_xfer(i2c->adapter, i2c->addr, i2c->flags,
          I2C_SMBUS_READ, reg, I2C_SMBUS_BYTE_DATA, &data);

 if (ret < 0)
  return ret;

 *val = data.byte;
 return 0;
}
