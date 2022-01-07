
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {int dummy; } ;


 int I2C_AQ_NO_ZERO_LEN ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_EMUL ;
 int I2C_FUNC_SMBUS_QUICK ;
 scalar_t__ i2c_check_quirks (struct i2c_adapter*,int ) ;

__attribute__((used)) static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
{
 if (i2c_check_quirks(adap, I2C_AQ_NO_ZERO_LEN))
  return I2C_FUNC_I2C |
   (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
 else
  return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
}
