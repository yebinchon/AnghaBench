
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int word; } ;
typedef int u8 ;
typedef int u16 ;
struct i2c_adapter {int dummy; } ;
struct cbus_host {int dummy; } ;


 int EINVAL ;
 char I2C_SMBUS_READ ;
 int I2C_SMBUS_WORD_DATA ;
 int cbus_transfer (struct cbus_host*,int,int ,int ,int) ;
 struct cbus_host* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static int cbus_i2c_smbus_xfer(struct i2c_adapter *adapter,
          u16 addr,
          unsigned short flags,
          char read_write,
          u8 command,
          int size,
          union i2c_smbus_data *data)
{
 struct cbus_host *chost = i2c_get_adapdata(adapter);
 int ret;

 if (size != I2C_SMBUS_WORD_DATA)
  return -EINVAL;

 ret = cbus_transfer(chost, read_write == I2C_SMBUS_READ, addr,
       command, data->word);
 if (ret < 0)
  return ret;

 if (read_write == I2C_SMBUS_READ)
  data->word = ret;

 return 0;
}
