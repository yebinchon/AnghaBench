
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct adt7411_data {struct i2c_client* client; } ;


 int ADT7411_REG_STAT_1 ;
 int ADT7411_STAT_1_EXT_TEMP_FAULT ;
 int ADT7411_STAT_1_EXT_TEMP_HIGH_AIN1 ;
 int ADT7411_STAT_1_EXT_TEMP_LOW ;
 int ADT7411_STAT_1_INT_TEMP_HIGH ;
 int ADT7411_STAT_1_INT_TEMP_LOW ;
 int EOPNOTSUPP ;
 struct adt7411_data* dev_get_drvdata (struct device*) ;



 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int adt7411_read_temp_alarm(struct device *dev, u32 attr, int channel,
       long *val)
{
 struct adt7411_data *data = dev_get_drvdata(dev);
 struct i2c_client *client = data->client;
 int ret, bit;

 ret = i2c_smbus_read_byte_data(client, ADT7411_REG_STAT_1);
 if (ret < 0)
  return ret;

 switch (attr) {
 case 128:
  bit = channel ? ADT7411_STAT_1_EXT_TEMP_LOW
         : ADT7411_STAT_1_INT_TEMP_LOW;
  break;
 case 129:
  bit = channel ? ADT7411_STAT_1_EXT_TEMP_HIGH_AIN1
         : ADT7411_STAT_1_INT_TEMP_HIGH;
  break;
 case 130:
  bit = ADT7411_STAT_1_EXT_TEMP_FAULT;
  break;
 default:
  return -EOPNOTSUPP;
 }

 *val = !!(ret & bit);
 return 0;
}
