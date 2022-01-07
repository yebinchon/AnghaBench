
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; int adapter; struct device dev; } ;
struct g760a_data {int clk; int fan_div; int update_lock; struct i2c_client* client; } ;


 int EIO ;
 int ENOMEM ;
 int G760A_DEFAULT_CLK ;
 int G760A_DEFAULT_FAN_DIV ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct g760a_data*,int ) ;
 struct g760a_data* devm_kzalloc (struct device*,int,int ) ;
 int g760a_groups ;
 int i2c_check_functionality (int ,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int g760a_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct g760a_data *data;
 struct device *hwmon_dev;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
  return -EIO;

 data = devm_kzalloc(dev, sizeof(struct g760a_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 data->fan_div = G760A_DEFAULT_FAN_DIV;
 data->clk = G760A_DEFAULT_CLK;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          g760a_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
