
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6697_data {int type; int update_lock; struct i2c_client* client; int * chip; } ;
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef enum chips { ____Placeholder_chips } chips ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct max6697_data*,int ) ;
 struct max6697_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int * max6697_chip_data ;
 int max6697_groups ;
 int max6697_init_chip (struct max6697_data*,struct i2c_client*) ;
 int mutex_init (int *) ;
 scalar_t__ of_device_get_match_data (struct device*) ;

__attribute__((used)) static int max6697_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 struct max6697_data *data;
 struct device *hwmon_dev;
 int err;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(struct max6697_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 if (client->dev.of_node)
  data->type = (enum chips)of_device_get_match_data(&client->dev);
 else
  data->type = id->driver_data;
 data->chip = &max6697_chip_data[data->type];
 data->client = client;
 mutex_init(&data->update_lock);

 err = max6697_init_chip(data, client);
 if (err)
  return err;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          max6697_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
