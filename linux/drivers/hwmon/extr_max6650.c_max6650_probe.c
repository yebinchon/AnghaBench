
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_cooling_device {int dummy; } ;
struct of_device_id {scalar_t__ data; } ;
struct max6650_data {int nr_fans; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {int of_node; } ;
struct i2c_client {int name; struct device dev; } ;


 int CONFIG_THERMAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (struct thermal_cooling_device*) ;
 int PTR_ERR (struct thermal_cooling_device*) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int dev_warn (struct device*,char*,int ) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct max6650_data*,int *,int ) ;
 struct max6650_data* devm_kzalloc (struct device*,int,int ) ;
 struct thermal_cooling_device* devm_thermal_of_cooling_device_register (struct device*,int ,int ,struct max6650_data*,int *) ;
 int i2c_set_clientdata (struct i2c_client*,struct max6650_data*) ;
 int max6650_chip_info ;
 int max6650_cooling_ops ;
 int max6650_dt_match ;
 int max6650_groups ;
 int max6650_init_client (struct max6650_data*,struct i2c_client*) ;
 int mutex_init (int *) ;
 struct of_device_id* of_match_device (int ,struct device*) ;
 int of_match_ptr (int ) ;

__attribute__((used)) static int max6650_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct thermal_cooling_device *cooling_dev;
 struct device *dev = &client->dev;
 const struct of_device_id *of_id =
  of_match_device(of_match_ptr(max6650_dt_match), dev);
 struct max6650_data *data;
 struct device *hwmon_dev;
 int err;

 data = devm_kzalloc(dev, sizeof(struct max6650_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);
 data->nr_fans = of_id ? (int)(uintptr_t)of_id->data : id->driver_data;




 err = max6650_init_client(data, client);
 if (err)
  return err;

 hwmon_dev = devm_hwmon_device_register_with_info(dev,
        client->name, data,
        &max6650_chip_info,
        max6650_groups);
 err = PTR_ERR_OR_ZERO(hwmon_dev);
 if (err)
  return err;

 if (IS_ENABLED(CONFIG_THERMAL)) {
  cooling_dev = devm_thermal_of_cooling_device_register(dev,
      dev->of_node, client->name,
      data, &max6650_cooling_ops);
  if (IS_ERR(cooling_dev)) {
   dev_warn(dev, "thermal cooling device register failed: %ld\n",
     PTR_ERR(cooling_dev));
  }
 }

 return 0;
}
