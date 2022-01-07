
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct7802_data {int access_lock; int regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct nct7802_data*,int ) ;
 struct nct7802_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_regmap_init_i2c (struct i2c_client*,int *) ;
 int mutex_init (int *) ;
 int nct7802_groups ;
 int nct7802_init_chip (struct nct7802_data*) ;
 int nct7802_regmap_config ;

__attribute__((used)) static int nct7802_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct nct7802_data *data;
 struct device *hwmon_dev;
 int ret;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 data->regmap = devm_regmap_init_i2c(client, &nct7802_regmap_config);
 if (IS_ERR(data->regmap))
  return PTR_ERR(data->regmap);

 mutex_init(&data->access_lock);

 ret = nct7802_init_chip(data);
 if (ret < 0)
  return ret;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          nct7802_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
