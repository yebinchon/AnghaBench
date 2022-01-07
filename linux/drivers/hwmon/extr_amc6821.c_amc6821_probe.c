
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct amc6821_data {int update_lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int amc6821_groups ;
 int amc6821_init_client (struct i2c_client*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct amc6821_data*,int ) ;
 struct amc6821_data* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int amc6821_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct amc6821_data *data;
 struct device *hwmon_dev;
 int err;

 data = devm_kzalloc(dev, sizeof(struct amc6821_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);




 err = amc6821_init_client(client);
 if (err)
  return err;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          amc6821_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
