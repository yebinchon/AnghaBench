
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ minor; } ;
struct w83793_data {int kref; int hwmon_dev; int watchdog_lock; int * client; int list; scalar_t__ watchdog_is_open; TYPE_7__ watchdog_miscdev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
struct TYPE_9__ {int dev_attr; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int W83793_REG_CONFIG ;
 int dev_attr_vrm ;
 int dev_warn (struct device*,char*) ;
 int device_remove_file (struct device*,int *) ;
 int hwmon_device_unregister (int ) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int misc_deregister (TYPE_7__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* sda_single_files ;
 int unregister_reboot_notifier (int *) ;
 TYPE_1__* w83793_left_fan ;
 TYPE_1__* w83793_left_pwm ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_release_resources ;
 TYPE_1__* w83793_sensor_attr_2 ;
 TYPE_1__* w83793_temp ;
 TYPE_1__* w83793_vid ;
 int w83793_write_value (struct i2c_client*,int ,int) ;
 int watchdog_data_mutex ;
 int watchdog_disable (struct w83793_data*) ;
 int watchdog_notifier ;

__attribute__((used)) static int w83793_remove(struct i2c_client *client)
{
 struct w83793_data *data = i2c_get_clientdata(client);
 struct device *dev = &client->dev;
 int i, tmp;


 if (data->watchdog_miscdev.minor) {
  misc_deregister(&data->watchdog_miscdev);

  if (data->watchdog_is_open) {
   dev_warn(&client->dev,
    "i2c client detached with watchdog open! "
    "Stopping watchdog.\n");
   watchdog_disable(data);
  }

  mutex_lock(&watchdog_data_mutex);
  list_del(&data->list);
  mutex_unlock(&watchdog_data_mutex);


  mutex_lock(&data->watchdog_lock);
  data->client = ((void*)0);
  mutex_unlock(&data->watchdog_lock);
 }


 tmp = w83793_read_value(client, W83793_REG_CONFIG);
 w83793_write_value(client, W83793_REG_CONFIG, tmp & ~0x04);

 unregister_reboot_notifier(&watchdog_notifier);

 hwmon_device_unregister(data->hwmon_dev);

 for (i = 0; i < ARRAY_SIZE(w83793_sensor_attr_2); i++)
  device_remove_file(dev,
       &w83793_sensor_attr_2[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(sda_single_files); i++)
  device_remove_file(dev, &sda_single_files[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(w83793_vid); i++)
  device_remove_file(dev, &w83793_vid[i].dev_attr);
 device_remove_file(dev, &dev_attr_vrm);

 for (i = 0; i < ARRAY_SIZE(w83793_left_fan); i++)
  device_remove_file(dev, &w83793_left_fan[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(w83793_left_pwm); i++)
  device_remove_file(dev, &w83793_left_pwm[i].dev_attr);

 for (i = 0; i < ARRAY_SIZE(w83793_temp); i++)
  device_remove_file(dev, &w83793_temp[i].dev_attr);


 mutex_lock(&watchdog_data_mutex);
 kref_put(&data->kref, w83793_release_resources);
 mutex_unlock(&watchdog_data_mutex);

 return 0;
}
