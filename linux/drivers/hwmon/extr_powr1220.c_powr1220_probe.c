
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powr1220_data {struct i2c_client* client; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; int adapter; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct powr1220_data*,int ) ;
 struct powr1220_data* devm_kzalloc (int *,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int mutex_init (int *) ;
 int powr1220_groups ;

__attribute__((used)) static int powr1220_probe(struct i2c_client *client,
  const struct i2c_device_id *id)
{
 struct powr1220_data *data;
 struct device *hwmon_dev;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = devm_kzalloc(&client->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 mutex_init(&data->update_lock);
 data->client = client;

 hwmon_dev = devm_hwmon_device_register_with_groups(&client->dev,
   client->name, data, powr1220_groups);

 return PTR_ERR_OR_ZERO(hwmon_dev);
}
