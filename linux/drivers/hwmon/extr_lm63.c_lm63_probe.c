
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm63_data {int kind; int temp2_offset; int config; int ** groups; int update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int name; struct device dev; } ;
typedef enum chips { ____Placeholder_chips } chips ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct lm63_data*,int **) ;
 struct lm63_data* devm_kzalloc (struct device*,int,int ) ;
 int lm63_group ;
 int lm63_group_extra_lut ;
 int lm63_group_fan1 ;
 int lm63_group_temp2_type ;
 int lm63_init_client (struct lm63_data*) ;
 scalar_t__ lm64 ;
 scalar_t__ lm96163 ;
 int mutex_init (int *) ;
 scalar_t__ of_device_get_match_data (struct device*) ;

__attribute__((used)) static int lm63_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct lm63_data *data;
 int groups = 0;

 data = devm_kzalloc(dev, sizeof(struct lm63_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->client = client;
 mutex_init(&data->update_lock);


 if (client->dev.of_node)
  data->kind = (enum chips)of_device_get_match_data(&client->dev);
 else
  data->kind = id->driver_data;
 if (data->kind == lm64)
  data->temp2_offset = 16000;


 lm63_init_client(data);


 data->groups[groups++] = &lm63_group;
 if (data->config & 0x04)
  data->groups[groups++] = &lm63_group_fan1;

 if (data->kind == lm96163) {
  data->groups[groups++] = &lm63_group_temp2_type;
  data->groups[groups++] = &lm63_group_extra_lut;
 }

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
