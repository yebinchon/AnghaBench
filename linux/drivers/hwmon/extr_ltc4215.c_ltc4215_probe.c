
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc4215_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int LTC4215_FAULT ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct ltc4215_data*,int ) ;
 struct ltc4215_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int ltc4215_groups ;
 int mutex_init (int *) ;

__attribute__((used)) static int ltc4215_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct device *dev = &client->dev;
 struct ltc4215_data *data;
 struct device *hwmon_dev;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 i2c_smbus_write_byte_data(client, LTC4215_FAULT, 0x00);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          ltc4215_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
