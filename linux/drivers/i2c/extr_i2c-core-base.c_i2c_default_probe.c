
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
struct i2c_adapter {int class; int dev; } ;


 int EOPNOTSUPP ;
 int I2C_CLASS_HWMON ;
 int I2C_FUNC_SMBUS_QUICK ;
 int I2C_FUNC_SMBUS_READ_BYTE ;
 int I2C_FUNC_SMBUS_READ_BYTE_DATA ;
 int I2C_SMBUS_BYTE ;
 int I2C_SMBUS_BYTE_DATA ;
 int I2C_SMBUS_QUICK ;
 int I2C_SMBUS_READ ;
 int I2C_SMBUS_WRITE ;
 int dev_warn (int *,char*,unsigned short) ;
 scalar_t__ i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_xfer (struct i2c_adapter*,unsigned short,int ,int ,int ,int ,union i2c_smbus_data*) ;

__attribute__((used)) static int i2c_default_probe(struct i2c_adapter *adap, unsigned short addr)
{
 int err;
 union i2c_smbus_data dummy;
 if (!((addr & ~0x07) == 0x30 || (addr & ~0x0f) == 0x50)
  && i2c_check_functionality(adap, I2C_FUNC_SMBUS_QUICK))
  err = i2c_smbus_xfer(adap, addr, 0, I2C_SMBUS_WRITE, 0,
         I2C_SMBUS_QUICK, ((void*)0));
 else if (i2c_check_functionality(adap, I2C_FUNC_SMBUS_READ_BYTE))
  err = i2c_smbus_xfer(adap, addr, 0, I2C_SMBUS_READ, 0,
         I2C_SMBUS_BYTE, &dummy);
 else {
  dev_warn(&adap->dev, "No suitable probing method supported for address 0x%02X\n",
    addr);
  err = -EOPNOTSUPP;
 }

 return err >= 0;
}
