
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc654_data {int config; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int adapter; struct device dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int TC654_REG_CONFIG ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct tc654_data*,int ) ;
 struct tc654_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int mutex_init (int *) ;
 int tc654_groups ;

__attribute__((used)) static int tc654_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct tc654_data *data;
 struct device *hwmon_dev;
 int ret;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -ENODEV;

 data = devm_kzalloc(dev, sizeof(struct tc654_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);

 ret = i2c_smbus_read_byte_data(client, TC654_REG_CONFIG);
 if (ret < 0)
  return ret;

 data->config = ret;

 hwmon_dev =
     devm_hwmon_device_register_with_groups(dev, client->name, data,
         tc654_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
