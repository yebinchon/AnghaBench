
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {int hwmon_dev; void** fan_min; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int kobj; } ;
struct i2c_client {struct device dev; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int * W83792D_REG_FAN_MIN ;
 int W83792D_REG_GPIO_EN ;
 int W83792D_REG_PIN ;
 struct w83792d_data* devm_kzalloc (struct device*,int,int ) ;
 int hwmon_device_register (struct device*) ;
 int i2c_set_clientdata (struct i2c_client*,struct w83792d_data*) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int w83792d_detect_subclients (struct i2c_client*) ;
 int w83792d_group ;
 int * w83792d_group_fan ;
 int w83792d_init_client (struct i2c_client*) ;
 void* w83792d_read_value (struct i2c_client*,int ) ;

__attribute__((used)) static int
w83792d_probe(struct i2c_client *client, const struct i2c_device_id *id)
{
 struct w83792d_data *data;
 struct device *dev = &client->dev;
 int i, val1, err;

 data = devm_kzalloc(dev, sizeof(struct w83792d_data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);

 err = w83792d_detect_subclients(client);
 if (err)
  return err;


 w83792d_init_client(client);


 for (i = 0; i < 7; i++) {
  data->fan_min[i] = w83792d_read_value(client,
     W83792D_REG_FAN_MIN[i]);
 }


 err = sysfs_create_group(&dev->kobj, &w83792d_group);
 if (err)
  return err;





 val1 = w83792d_read_value(client, W83792D_REG_GPIO_EN);

 if (!(val1 & 0x40)) {
  err = sysfs_create_group(&dev->kobj, &w83792d_group_fan[0]);
  if (err)
   goto exit_remove_files;
 }

 if (!(val1 & 0x20)) {
  err = sysfs_create_group(&dev->kobj, &w83792d_group_fan[1]);
  if (err)
   goto exit_remove_files;
 }

 val1 = w83792d_read_value(client, W83792D_REG_PIN);
 if (val1 & 0x40) {
  err = sysfs_create_group(&dev->kobj, &w83792d_group_fan[2]);
  if (err)
   goto exit_remove_files;
 }

 if (val1 & 0x04) {
  err = sysfs_create_group(&dev->kobj, &w83792d_group_fan[3]);
  if (err)
   goto exit_remove_files;
 }

 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_remove_files;
 }

 return 0;

exit_remove_files:
 sysfs_remove_group(&dev->kobj, &w83792d_group);
 for (i = 0; i < ARRAY_SIZE(w83792d_group_fan); i++)
  sysfs_remove_group(&dev->kobj, &w83792d_group_fan[i]);
 return err;
}
