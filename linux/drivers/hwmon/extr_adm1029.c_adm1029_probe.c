
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct adm1029_data {int update_lock; struct i2c_client* client; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int adm1029_groups ;
 scalar_t__ adm1029_init_client (struct i2c_client*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct adm1029_data*,int ) ;
 struct adm1029_data* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int adm1029_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct adm1029_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(dev, sizeof(struct adm1029_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);





 if (adm1029_init_client(client) == 0)
  return -ENODEV;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          adm1029_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
