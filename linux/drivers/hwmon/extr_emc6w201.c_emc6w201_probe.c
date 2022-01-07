
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct emc6w201_data {int update_lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct emc6w201_data*,int ) ;
 struct emc6w201_data* devm_kzalloc (struct device*,int,int ) ;
 int emc6w201_groups ;
 int mutex_init (int *) ;

__attribute__((used)) static int emc6w201_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct emc6w201_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(dev, sizeof(struct emc6w201_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          emc6w201_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
