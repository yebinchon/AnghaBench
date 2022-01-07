
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm95245_data {int update_lock; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_info (struct device*,int ,struct lm95245_data*,int *,int *) ;
 struct lm95245_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int lm95245_chip_info ;
 int lm95245_init_client (struct lm95245_data*) ;
 int lm95245_regmap_config ;
 int mutex_init (int *) ;

__attribute__((used)) static int lm95245_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct lm95245_data *data;
 struct device *hwmon_dev;
 int ret;

 data = devm_kzalloc(dev, sizeof(struct lm95245_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->regmap = devm_regmap_init_i2c(client, &lm95245_regmap_config);
 if (IS_ERR(data->regmap))
  return PTR_ERR(data->regmap);

 mutex_init(&data->update_lock);


 ret = lm95245_init_client(data);
 if (ret < 0)
  return ret;

 hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
        data,
        &lm95245_chip_info,
        ((void*)0));
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
