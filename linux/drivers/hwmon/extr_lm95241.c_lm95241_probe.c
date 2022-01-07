
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95241_data {int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct lm95241_data*,int *,int *) ;
 struct lm95241_data* devm_kzalloc (struct device*,int,int ) ;
 int lm95241_chip_info ;
 int lm95241_init_client (struct i2c_client*,struct lm95241_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm95241_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct lm95241_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(dev, sizeof(struct lm95241_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 lm95241_init_client(client, data);

 hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
          data,
          &lm95241_chip_info,
          ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
