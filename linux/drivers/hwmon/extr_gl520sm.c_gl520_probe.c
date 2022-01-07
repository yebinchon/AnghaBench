
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct gl520_data {int ** groups; scalar_t__ two_temps; struct i2c_client* client; int update_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct gl520_data*,int **) ;
 struct gl520_data* devm_kzalloc (struct device*,int,int ) ;
 int gl520_group ;
 int gl520_group_in4 ;
 int gl520_group_temp2 ;
 int gl520_init_client (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct gl520_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int gl520_probe(struct i2c_client *client,
         const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct device *hwmon_dev;
 struct gl520_data *data;

 data = devm_kzalloc(dev, sizeof(struct gl520_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);
 data->client = client;


 gl520_init_client(client);


 data->groups[0] = &gl520_group;

 if (data->two_temps)
  data->groups[1] = &gl520_group_temp2;
 else
  data->groups[1] = &gl520_group_in4;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data, data->groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
