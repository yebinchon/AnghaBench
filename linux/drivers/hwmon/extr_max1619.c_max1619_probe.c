
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1619_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct max1619_data*,int ) ;
 struct max1619_data* devm_kzalloc (int *,int,int ) ;
 int max1619_groups ;
 int max1619_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int max1619_probe(struct i2c_client *new_client,
    const struct i2c_device_id *id)
{
 struct max1619_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(&new_client->dev, sizeof(struct max1619_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = new_client;
 mutex_init(&data->update_lock);


 max1619_init_client(new_client);

 hwmon_dev = devm_hwmon_device_register_with_groups(&new_client->dev,
          new_client->name,
          data,
          max1619_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
