
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {struct i2c_client* client; } ;


 int ADT7411_REG_VDD_HIGH ;
 int ADT7411_REG_VDD_LOW ;
 long DIV_ROUND_CLOSEST (long,int) ;
 int EOPNOTSUPP ;
 long clamp_val (long,int ,int) ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int,long) ;

__attribute__((used)) static int adt7411_write_in_vdd(struct device *dev, u32 attr, long val)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int reg;

 val = clamp_val(val, 0, 255 * 7000 / 256);
 val = DIV_ROUND_CLOSEST(val * 256, 7000);

 switch (attr) {
 case 128:
  reg = ADT7411_REG_VDD_LOW;
  break;
 case 129:
  reg = ADT7411_REG_VDD_HIGH;
  break;
 default:
  return -EOPNOTSUPP;
 }

 return i2c_smbus_write_byte_data(client, reg, val);
}
