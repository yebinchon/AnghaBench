
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm83_data {int ** groups; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int name; int dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct lm83_data*,int **) ;
 struct lm83_data* devm_kzalloc (int *,int,int ) ;
 scalar_t__ lm83 ;
 int lm83_group ;
 int lm83_group_opt ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm83_probe(struct i2c_client *new_client,
        const struct i2c_device_id *id)
{
 struct device *hwmon_dev;
 struct lm83_data *data;

 data = devm_kzalloc(&new_client->dev, sizeof(struct lm83_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = new_client;
 mutex_init(&data->update_lock);







 data->groups[0] = &lm83_group;
 if (id->driver_data == lm83)
  data->groups[1] = &lm83_group_opt;

 hwmon_dev = devm_hwmon_device_register_with_groups(&new_client->dev,
          new_client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
