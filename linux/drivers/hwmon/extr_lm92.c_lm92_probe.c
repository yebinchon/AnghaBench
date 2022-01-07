
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm92_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int name; int dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct lm92_data*,int ) ;
 struct lm92_data* devm_kzalloc (int *,int,int ) ;
 int lm92_groups ;
 int lm92_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm92_probe(struct i2c_client *new_client,
        const struct i2c_device_id *id)
{
 struct device *hwmon_dev;
 struct lm92_data *data;

 data = devm_kzalloc(&new_client->dev, sizeof(struct lm92_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = new_client;
 mutex_init(&data->update_lock);


 lm92_init_client(new_client);

 hwmon_dev = devm_hwmon_device_register_with_groups(&new_client->dev,
          new_client->name,
          data, lm92_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
