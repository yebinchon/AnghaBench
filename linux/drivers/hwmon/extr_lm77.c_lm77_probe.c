
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm77_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm77_data*,int ) ;
 struct lm77_data* devm_kzalloc (struct device*,int,int ) ;
 int lm77_groups ;
 int lm77_init_client (struct i2c_client*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm77_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct lm77_data *data;

 data = devm_kzalloc(dev, sizeof(struct lm77_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 lm77_init_client(client);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, lm77_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
