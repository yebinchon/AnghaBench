
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int driver_data; } ;
struct i2c_client {int name; int dev; } ;
struct ds1621_data {struct i2c_client* client; int kind; int update_lock; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct ds1621_data*,int ) ;
 struct ds1621_data* devm_kzalloc (int *,int,int ) ;
 int ds1621_groups ;
 int ds1621_init_client (struct ds1621_data*,struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int ds1621_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ds1621_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(&client->dev, sizeof(struct ds1621_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 mutex_init(&data->update_lock);

 data->kind = id->driver_data;
 data->client = client;


 ds1621_init_client(data, client);

 hwmon_dev = devm_hwmon_device_register_with_groups(&client->dev,
          client->name, data,
          ds1621_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
