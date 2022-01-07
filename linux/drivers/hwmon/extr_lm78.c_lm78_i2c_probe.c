
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm78_data {int type; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm78_data*,int ) ;
 struct lm78_data* devm_kzalloc (struct device*,int,int ) ;
 int lm78_groups ;
 int lm78_init_device (struct lm78_data*) ;

__attribute__((used)) static int lm78_i2c_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct lm78_data *data;

 data = devm_kzalloc(dev, sizeof(struct lm78_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 data->type = id->driver_data;


 lm78_init_device(data);

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, lm78_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
