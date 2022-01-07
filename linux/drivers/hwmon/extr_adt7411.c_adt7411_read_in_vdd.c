
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {struct i2c_client* client; } ;


 int ADT7411_REG_INT_TEMP_VDD_LSB ;
 int ADT7411_REG_VDD_HIGH ;
 int ADT7411_REG_VDD_LOW ;
 int ADT7411_REG_VDD_MSB ;
 int EOPNOTSUPP ;
 int adt7411_read_10_bit (struct i2c_client*,int ,int ,int) ;
 int adt7411_read_in_alarm (struct device*,int ,long*) ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;




 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int adt7411_read_in_vdd(struct device *dev, u32 attr, long *val)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret;

 switch (attr) {
 case 130:
  ret = adt7411_read_10_bit(client, ADT7411_REG_INT_TEMP_VDD_LSB,
       ADT7411_REG_VDD_MSB, 2);
  if (ret < 0)
   return ret;
  *val = ret * 7000 / 1024;
  return 0;
 case 128:
  ret = i2c_smbus_read_byte_data(client, ADT7411_REG_VDD_LOW);
  if (ret < 0)
   return ret;
  *val = ret * 7000 / 256;
  return 0;
 case 129:
  ret = i2c_smbus_read_byte_data(client, ADT7411_REG_VDD_HIGH);
  if (ret < 0)
   return ret;
  *val = ret * 7000 / 256;
  return 0;
 case 131:
  return adt7411_read_in_alarm(dev, 0, val);
 default:
  return -EOPNOTSUPP;
 }
}
