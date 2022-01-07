
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union i2c_smbus_data {int dummy; } i2c_smbus_data ;
typedef int u8 ;
typedef int u16 ;
struct zx2967_i2c {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int EOPNOTSUPP ;



 char I2C_SMBUS_READ ;

 char I2C_SMBUS_WRITE ;
 struct zx2967_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int zx2967_smbus_xfer_prepare (struct zx2967_i2c*,int ,char,int ,int,union i2c_smbus_data*) ;
 int zx2967_smbus_xfer_read (struct zx2967_i2c*,int,union i2c_smbus_data*) ;
 int zx2967_smbus_xfer_write (struct zx2967_i2c*) ;

__attribute__((used)) static int zx2967_smbus_xfer(struct i2c_adapter *adap, u16 addr,
        unsigned short flags, char read_write,
        u8 command, int size, union i2c_smbus_data *data)
{
 struct zx2967_i2c *i2c = i2c_get_adapdata(adap);

 if (size == 129)
  read_write = I2C_SMBUS_WRITE;

 switch (size) {
 case 129:
 case 131:
 case 130:
 case 128:
  zx2967_smbus_xfer_prepare(i2c, addr, read_write,
       command, size, data);
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (read_write == I2C_SMBUS_READ)
  return zx2967_smbus_xfer_read(i2c, size, data);

 return zx2967_smbus_xfer_write(i2c);
}
