
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95234_data {int ** groups; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm95234_data*,int **) ;
 struct lm95234_data* devm_kzalloc (struct device*,int,int ) ;
 scalar_t__ lm95234 ;
 int lm95234_common_group ;
 int lm95234_group ;
 int lm95234_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm95234_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct lm95234_data *data;
 struct device *hwmon_dev;
 int err;

 data = devm_kzalloc(dev, sizeof(struct lm95234_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 err = lm95234_init_client(client);
 if (err < 0)
  return err;

 data->groups[0] = &lm95234_common_group;
 if (id->driver_data == lm95234)
  data->groups[1] = &lm95234_group;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
