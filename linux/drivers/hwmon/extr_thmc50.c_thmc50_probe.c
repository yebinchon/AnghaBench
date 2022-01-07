
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thmc50_data {int ** groups; scalar_t__ has_temp3; int update_lock; int type; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct thmc50_data*,int **) ;
 struct thmc50_data* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int temp3_group ;
 int thmc50_group ;
 int thmc50_init_client (struct thmc50_data*) ;

__attribute__((used)) static int thmc50_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct thmc50_data *data;
 struct device *hwmon_dev;
 int idx = 0;

 data = devm_kzalloc(dev, sizeof(struct thmc50_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 data->type = id->driver_data;
 mutex_init(&data->update_lock);

 thmc50_init_client(data);


 data->groups[idx++] = &thmc50_group;


 if (data->has_temp3)
  data->groups[idx++] = &temp3_group;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
