
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;
struct dme1737_data {int hwmon_dev; int update_lock; int name; struct i2c_client* client; int type; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*) ;
 struct dme1737_data* devm_kzalloc (struct device*,int,int ) ;
 int dme1737_create_files (struct device*) ;
 int dme1737_init_device (struct device*) ;
 int dme1737_remove_files (struct device*) ;
 int hwmon_device_register (struct device*) ;
 int i2c_set_clientdata (struct i2c_client*,struct dme1737_data*) ;
 int mutex_init (int *) ;

__attribute__((used)) static int dme1737_i2c_probe(struct i2c_client *client,
        const struct i2c_device_id *id)
{
 struct dme1737_data *data;
 struct device *dev = &client->dev;
 int err;

 data = devm_kzalloc(dev, sizeof(struct dme1737_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 data->type = id->driver_data;
 data->client = client;
 data->name = client->name;
 mutex_init(&data->update_lock);


 err = dme1737_init_device(dev);
 if (err) {
  dev_err(dev, "Failed to initialize device.\n");
  return err;
 }


 err = dme1737_create_files(dev);
 if (err) {
  dev_err(dev, "Failed to create sysfs files.\n");
  return err;
 }


 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev)) {
  dev_err(dev, "Failed to register device.\n");
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 dme1737_remove_files(dev);
 return err;
}
