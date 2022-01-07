
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct ds620_data {int update_lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct ds620_data*,int ) ;
 struct ds620_data* devm_kzalloc (struct device*,int,int ) ;
 int ds620_groups ;
 int ds620_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ds620_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct ds620_data *data;

 data = devm_kzalloc(dev, sizeof(struct ds620_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 ds620_init_client(client);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, ds620_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
