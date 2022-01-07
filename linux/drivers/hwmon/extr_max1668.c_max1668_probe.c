
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1668_data {scalar_t__ type; int ** groups; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct max1668_data*,int **) ;
 struct max1668_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 scalar_t__ max1668 ;
 int max1668_group_common ;
 int max1668_group_unique ;
 scalar_t__ max1989 ;
 int mutex_init (int *) ;

__attribute__((used)) static int max1668_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct max1668_data *data;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(struct max1668_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 data->type = id->driver_data;
 mutex_init(&data->update_lock);


 data->groups[0] = &max1668_group_common;
 if (data->type == max1668 || data->type == max1989)
  data->groups[1] = &max1668_group_unique;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
