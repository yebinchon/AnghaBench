
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct adm1031_data {scalar_t__ chip_type; int ** groups; int * chan_select_table; int update_lock; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 scalar_t__ adm1030 ;
 scalar_t__ adm1031 ;
 int adm1031_group ;
 int adm1031_group_opt ;
 int adm1031_init_client (struct i2c_client*) ;
 int auto_channel_select_table_adm1030 ;
 int auto_channel_select_table_adm1031 ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct adm1031_data*,int **) ;
 struct adm1031_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adm1031_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int adm1031_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct adm1031_data *data;

 data = devm_kzalloc(dev, sizeof(struct adm1031_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->client = client;
 data->chip_type = id->driver_data;
 mutex_init(&data->update_lock);

 if (data->chip_type == adm1030)
  data->chan_select_table = &auto_channel_select_table_adm1030;
 else
  data->chan_select_table = &auto_channel_select_table_adm1031;


 adm1031_init_client(client);


 data->groups[0] = &adm1031_group;
 if (data->chip_type == adm1031)
  data->groups[1] = &adm1031_group_opt;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
