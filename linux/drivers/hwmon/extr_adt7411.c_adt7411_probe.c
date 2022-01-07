
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct adt7411_data {int next_update; int update_lock; int device_lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int adt7411_chip_info ;
 int adt7411_groups ;
 int adt7411_init_device (struct adt7411_data*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct adt7411_data*,int *,int ) ;
 struct adt7411_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adt7411_data*) ;
 int jiffies ;
 int mutex_init (int *) ;

__attribute__((used)) static int adt7411_probe(struct i2c_client *client,
       const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct adt7411_data *data;
 struct device *hwmon_dev;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;
 mutex_init(&data->device_lock);
 mutex_init(&data->update_lock);

 ret = adt7411_init_device(data);
 if (ret < 0)
  return ret;


 data->next_update = jiffies;

 hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
        data,
        &adt7411_chip_info,
        adt7411_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
