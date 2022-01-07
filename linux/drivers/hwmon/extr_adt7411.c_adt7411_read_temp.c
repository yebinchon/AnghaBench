
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {struct i2c_client* client; } ;


 int ADT7411_REG_EXT_TEMP_AIN14_LSB ;
 int ADT7411_REG_EXT_TEMP_AIN1_MSB ;
 int ADT7411_REG_INT_TEMP_MSB ;
 int ADT7411_REG_INT_TEMP_VDD_LSB ;
 int ADT7411_REG_TEMP_HIGH (int) ;
 int ADT7411_REG_TEMP_LOW (int) ;
 int EOPNOTSUPP ;
 int adt7411_read_10_bit (struct i2c_client*,int,int,int ) ;
 int adt7411_read_temp_alarm (struct device*,int,int,long*) ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;






 int i2c_smbus_read_byte_data (struct i2c_client*,int) ;

__attribute__((used)) static int adt7411_read_temp(struct device *dev, u32 attr, int channel,
        long *val)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret, reg, regl, regh;

 switch (attr) {
 case 132:
  regl = channel ? ADT7411_REG_EXT_TEMP_AIN14_LSB :
     ADT7411_REG_INT_TEMP_VDD_LSB;
  regh = channel ? ADT7411_REG_EXT_TEMP_AIN1_MSB :
     ADT7411_REG_INT_TEMP_MSB;
  ret = adt7411_read_10_bit(client, regl, regh, 0);
  if (ret < 0)
   return ret;
  ret = ret & 0x200 ? ret - 0x400 : ret;
  *val = ret * 250;
  return 0;
 case 129:
 case 131:
  reg = (attr == 129)
   ? ADT7411_REG_TEMP_LOW(channel)
   : ADT7411_REG_TEMP_HIGH(channel);
  ret = i2c_smbus_read_byte_data(client, reg);
  if (ret < 0)
   return ret;
  ret = ret & 0x80 ? ret - 0x100 : ret;
  *val = ret * 1000;
  return 0;
 case 128:
 case 130:
 case 133:
  return adt7411_read_temp_alarm(dev, attr, channel, val);
 default:
  return -EOPNOTSUPP;
 }
}
