
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int * lm75; int hwmon_dev; int type; struct i2c_client* client; int update_lock; int lock; } ;
struct i2c_device_id {int driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 struct w83781d_data* devm_kzalloc (struct device*,int,int ) ;
 int hwmon_device_register (struct device*) ;
 int i2c_set_clientdata (struct i2c_client*,struct w83781d_data*) ;
 int i2c_unregister_device (int ) ;
 int mutex_init (int *) ;
 int w83781d_create_files (struct device*,int ,int ) ;
 int w83781d_detect_subclients (struct i2c_client*) ;
 int w83781d_init_device (struct device*) ;
 int w83781d_remove_files (struct device*) ;

__attribute__((used)) static int
w83781d_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct device *dev = &client->dev;
 struct w83781d_data *data;
 int err;

 data = devm_kzalloc(dev, sizeof(struct w83781d_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->lock);
 mutex_init(&data->update_lock);

 data->type = id->driver_data;
 data->client = client;


 err = w83781d_detect_subclients(client);
 if (err)
  return err;


 w83781d_init_device(dev);


 err = w83781d_create_files(dev, data->type, 0);
 if (err)
  goto exit_remove_files;

 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

 exit_remove_files:
 w83781d_remove_files(dev);
 i2c_unregister_device(data->lm75[0]);
 i2c_unregister_device(data->lm75[1]);
 return err;
}
