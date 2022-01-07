
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct w83l785ts_data {int hwmon_dev; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_4__ {int dev_attr; } ;
struct TYPE_3__ {int dev_attr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int device_create_file (struct device*,int *) ;
 int device_remove_file (struct device*,int *) ;
 struct w83l785ts_data* devm_kzalloc (struct device*,int,int ) ;
 int hwmon_device_register (struct device*) ;
 int i2c_set_clientdata (struct i2c_client*,struct w83l785ts_data*) ;
 int mutex_init (int *) ;
 TYPE_2__ sensor_dev_attr_temp1_input ;
 TYPE_1__ sensor_dev_attr_temp1_max ;

__attribute__((used)) static int w83l785ts_probe(struct i2c_client *client,
      const struct i2c_device_id *id)
{
 struct w83l785ts_data *data;
 struct device *dev = &client->dev;
 int err;

 data = devm_kzalloc(dev, sizeof(struct w83l785ts_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);






 err = device_create_file(dev, &sensor_dev_attr_temp1_input.dev_attr);
 if (err)
  return err;

 err = device_create_file(dev, &sensor_dev_attr_temp1_max.dev_attr);
 if (err)
  goto exit_remove;


 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove;
 }

 return 0;

exit_remove:
 device_remove_file(dev, &sensor_dev_attr_temp1_input.dev_attr);
 device_remove_file(dev, &sensor_dev_attr_temp1_max.dev_attr);
 return err;
}
