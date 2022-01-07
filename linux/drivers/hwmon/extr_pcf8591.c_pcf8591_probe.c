
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcf8591_data {int hwmon_dev; int update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_attr_in2_input ;
 int dev_attr_in3_input ;
 int device_create_file (TYPE_1__*,int *) ;
 struct pcf8591_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcf8591_data*) ;
 int input_mode ;
 int mutex_init (int *) ;
 int pcf8591_attr_group ;
 int pcf8591_attr_group_opt ;
 int pcf8591_init_client (struct i2c_client*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int pcf8591_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct pcf8591_data *data;
 int err;

 data = devm_kzalloc(&client->dev, sizeof(struct pcf8591_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->update_lock);


 pcf8591_init_client(client);


 err = sysfs_create_group(&client->dev.kobj, &pcf8591_attr_group);
 if (err)
  return err;


 if (input_mode != 3) {
  err = device_create_file(&client->dev, &dev_attr_in2_input);
  if (err)
   goto exit_sysfs_remove;
 }


 if (input_mode == 0) {
  err = device_create_file(&client->dev, &dev_attr_in3_input);
  if (err)
   goto exit_sysfs_remove;
 }

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto exit_sysfs_remove;
 }

 return 0;

exit_sysfs_remove:
 sysfs_remove_group(&client->dev.kobj, &pcf8591_attr_group_opt);
 sysfs_remove_group(&client->dev.kobj, &pcf8591_attr_group);
 return err;
}
