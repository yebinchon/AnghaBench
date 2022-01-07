
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6642_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct max6642_data*,int ) ;
 struct max6642_data* devm_kzalloc (struct device*,int,int ) ;
 int max6642_groups ;
 int max6642_init_client (struct max6642_data*,struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int max6642_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct max6642_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(dev, sizeof(struct max6642_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 max6642_init_client(data, client);

 hwmon_dev = devm_hwmon_device_register_with_groups(&client->dev,
          client->name, data,
          max6642_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
