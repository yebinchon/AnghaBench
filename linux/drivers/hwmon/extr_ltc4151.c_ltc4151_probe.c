
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ltc4151_data {int shunt; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int of_node; } ;
struct i2c_client {int name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct ltc4151_data*,int ) ;
 struct ltc4151_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int ltc4151_groups ;
 int mutex_init (int *) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;

__attribute__((used)) static int ltc4151_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 struct ltc4151_data *data;
 struct device *hwmon_dev;
 u32 shunt;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 if (of_property_read_u32(client->dev.of_node,
     "shunt-resistor-micro-ohms", &shunt))
  shunt = 1000;

 if (shunt == 0)
  return -EINVAL;

 data->shunt = shunt;

 data->client = client;
 mutex_init(&data->update_lock);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          ltc4151_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
