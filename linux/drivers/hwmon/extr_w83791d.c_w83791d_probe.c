
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83791d_data {int* fan_min; int hwmon_dev; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int kobj; } ;
struct i2c_client {struct device dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int NUMBER_OF_FANIN ;
 int PTR_ERR (int ) ;
 int W83791D_REG_DID_VID4 ;
 int * W83791D_REG_FAN_MIN ;
 int W83791D_REG_GPIO ;
 int dev_dbg (struct device*,char*,int,int,int) ;
 struct w83791d_data* devm_kzalloc (struct device*,int,int ) ;
 int hwmon_device_register (struct device*) ;
 int i2c_set_clientdata (struct i2c_client*,struct w83791d_data*) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int w83791d_detect_subclients (struct i2c_client*) ;
 int w83791d_group ;
 int w83791d_group_fanpwm45 ;
 int w83791d_init_client (struct i2c_client*) ;
 int w83791d_read (struct i2c_client*,int ) ;

__attribute__((used)) static int w83791d_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct w83791d_data *data;
 struct device *dev = &client->dev;
 int i, err;
 u8 has_fanpwm45;
 data = devm_kzalloc(&client->dev, sizeof(struct w83791d_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);

 err = w83791d_detect_subclients(client);
 if (err)
  return err;


 w83791d_init_client(client);





 for (i = 0; i < NUMBER_OF_FANIN; i++)
  data->fan_min[i] = w83791d_read(client, W83791D_REG_FAN_MIN[i]);


 err = sysfs_create_group(&client->dev.kobj, &w83791d_group);
 if (err)
  return err;


 has_fanpwm45 = w83791d_read(client, W83791D_REG_GPIO) & 0x10;
 if (has_fanpwm45) {
  err = sysfs_create_group(&client->dev.kobj,
      &w83791d_group_fanpwm45);
  if (err)
   goto error4;
 }


 data->hwmon_dev = hwmon_device_register(dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto error5;
 }

 return 0;

error5:
 if (has_fanpwm45)
  sysfs_remove_group(&client->dev.kobj, &w83791d_group_fanpwm45);
error4:
 sysfs_remove_group(&client->dev.kobj, &w83791d_group);
 return err;
}
