
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int adapter; struct device dev; } ;
struct g762_data {int update_lock; struct i2c_client* client; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct g762_data*,int ) ;
 struct g762_data* devm_kzalloc (struct device*,int,int ) ;
 int g762_fan_init (struct device*) ;
 int g762_groups ;
 int g762_of_clock_enable (struct i2c_client*) ;
 int g762_of_prop_import (struct i2c_client*) ;
 int g762_pdata_prop_import (struct i2c_client*) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct g762_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int g762_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct g762_data *data;
 int ret;

 if (!i2c_check_functionality(client->adapter,
         I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(struct g762_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;
 mutex_init(&data->update_lock);


 ret = g762_fan_init(dev);
 if (ret)
  return ret;


 ret = g762_of_clock_enable(client);
 if (ret)
  return ret;
 ret = g762_of_prop_import(client);
 if (ret)
  return ret;

 ret = g762_pdata_prop_import(client);
 if (ret)
  return ret;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
           data, g762_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
