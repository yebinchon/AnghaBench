
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct adt7462_data {int lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int adt7462_groups ;
 int dev_info (struct device*,char*,int ) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct adt7462_data*,int ) ;
 struct adt7462_data* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int adt7462_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct adt7462_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(dev, sizeof(struct adt7462_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->lock);

 dev_info(&client->dev, "%s chip found\n", client->name);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          adt7462_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
