
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6639_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct max6639_data*,int ) ;
 struct max6639_data* devm_kzalloc (struct device*,int,int ) ;
 int max6639_groups ;
 int max6639_init_client (struct i2c_client*,struct max6639_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int max6639_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct max6639_data *data;
 struct device *hwmon_dev;
 int err;

 data = devm_kzalloc(dev, sizeof(struct max6639_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 err = max6639_init_client(client, data);
 if (err < 0)
  return err;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          max6639_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
