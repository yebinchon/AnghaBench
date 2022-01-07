
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct adt7470_data {int num_temp_sensors; struct device* auto_update; int lock; struct i2c_client* client; int auto_update_interval; } ;


 int AUTO_UPDATE_INTERVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int adt7470_groups ;
 int adt7470_init_client (struct i2c_client*) ;
 int adt7470_update_thread ;
 int dev_info (struct device*,char*,int ) ;
 int dev_name (struct device*) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct adt7470_data*,int ) ;
 struct adt7470_data* devm_kzalloc (struct device*,int,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct adt7470_data*) ;
 struct device* kthread_run (int ,struct i2c_client*,char*,int ) ;
 int mutex_init (int *) ;

__attribute__((used)) static int adt7470_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct adt7470_data *data;
 struct device *hwmon_dev;

 data = devm_kzalloc(dev, sizeof(struct adt7470_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 data->num_temp_sensors = -1;
 data->auto_update_interval = AUTO_UPDATE_INTERVAL;

 i2c_set_clientdata(client, data);
 data->client = client;
 mutex_init(&data->lock);

 dev_info(&client->dev, "%s chip found\n", client->name);


 adt7470_init_client(client);


 hwmon_dev = devm_hwmon_device_register_with_groups(dev, client->name,
          data,
          adt7470_groups);

 if (IS_ERR(hwmon_dev))
  return PTR_ERR(hwmon_dev);

 data->auto_update = kthread_run(adt7470_update_thread, client, "%s",
     dev_name(hwmon_dev));
 if (IS_ERR(data->auto_update)) {
  return PTR_ERR(data->auto_update);
 }

 return 0;
}
