
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thermal_data {int ** groups; int mutex; struct device* regmap; } ;
struct i2c_device_id {int driver_data; int name; } ;
struct i2c_client {int dev; int name; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int dev_info (int *,char*,int ) ;
 struct device* devm_hwmon_device_register_with_groups (int *,int ,struct thermal_data*,int **) ;
 struct thermal_data* devm_kzalloc (int *,int,int ) ;
 struct device* devm_regmap_init_i2c (struct i2c_client*,int *) ;

 int emc1402_alarm_group ;
 int emc1402_group ;

 int emc1403_group ;
 int emc1403_regmap_config ;

 int emc1404_group ;
 int mutex_init (int *) ;

__attribute__((used)) static int emc1403_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct thermal_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(&client->dev, sizeof(struct thermal_data),
       GFP_KERNEL);
 if (data == ((void*)0))
  return -ENOMEM;

 data->regmap = devm_regmap_init_i2c(client, &emc1403_regmap_config);
 if (IS_ERR(data->regmap))
  return PTR_ERR(data->regmap);

 mutex_init(&data->mutex);

 switch (id->driver_data) {
 case 128:
  data->groups[2] = &emc1404_group;

 case 129:
  data->groups[1] = &emc1403_group;

 case 130:
  data->groups[0] = &emc1402_group;
 }

 if (id->driver_data == 130)
  data->groups[1] = &emc1402_alarm_group;

 hwmon_dev = devm_hwmon_device_register_with_groups(&client->dev,
          client->name, data,
          data->groups);
 if (IS_ERR(hwmon_dev))
  return PTR_ERR(hwmon_dev);

 dev_info(&client->dev, "%s Thermal chip found\n", id->name);
 return 0;
}
