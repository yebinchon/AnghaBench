
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina209_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct ina209_data*,int ) ;
 struct ina209_data* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct ina209_data*) ;
 int ina209_groups ;
 int ina209_init_client (struct i2c_client*,struct ina209_data*) ;
 int ina209_restore_conf (struct i2c_client*,struct ina209_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ina209_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct i2c_adapter *adapter = client->adapter;
 struct ina209_data *data;
 struct device *hwmon_dev;
 int ret;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA))
  return -ENODEV;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;
 mutex_init(&data->update_lock);

 ret = ina209_init_client(client, data);
 if (ret)
  return ret;

 hwmon_dev = devm_hwmon_device_register_with_groups(&client->dev,
          client->name,
          data, ina209_groups);
 if (IS_ERR(hwmon_dev)) {
  ret = PTR_ERR(hwmon_dev);
  goto out_restore_conf;
 }

 return 0;

out_restore_conf:
 ina209_restore_conf(client, data);
 return ret;
}
