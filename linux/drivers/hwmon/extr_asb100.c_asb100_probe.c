
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i2c_device_id {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct asb100_data {int * lm75; int hwmon_dev; void** fan_min; int update_lock; int lock; } ;


 int ASB100_REG_FAN_MIN (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int asb100_detect_subclients (struct i2c_client*) ;
 int asb100_group ;
 int asb100_init_client (struct i2c_client*) ;
 void* asb100_read_value (struct i2c_client*,int ) ;
 struct asb100_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int hwmon_device_register (TYPE_1__*) ;
 int i2c_set_clientdata (struct i2c_client*,struct asb100_data*) ;
 int i2c_unregister_device (int ) ;
 int mutex_init (int *) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int asb100_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 int err;
 struct asb100_data *data;

 data = devm_kzalloc(&client->dev, sizeof(struct asb100_data),
       GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 i2c_set_clientdata(client, data);
 mutex_init(&data->lock);
 mutex_init(&data->update_lock);


 err = asb100_detect_subclients(client);
 if (err)
  return err;


 asb100_init_client(client);


 data->fan_min[0] = asb100_read_value(client, ASB100_REG_FAN_MIN(0));
 data->fan_min[1] = asb100_read_value(client, ASB100_REG_FAN_MIN(1));
 data->fan_min[2] = asb100_read_value(client, ASB100_REG_FAN_MIN(2));


 err = sysfs_create_group(&client->dev.kobj, &asb100_group);
 if (err)
  goto ERROR3;

 data->hwmon_dev = hwmon_device_register(&client->dev);
 if (IS_ERR(data->hwmon_dev)) {
  err = PTR_ERR(data->hwmon_dev);
  goto ERROR4;
 }

 return 0;

ERROR4:
 sysfs_remove_group(&client->dev.kobj, &asb100_group);
ERROR3:
 i2c_unregister_device(data->lm75[1]);
 i2c_unregister_device(data->lm75[0]);
 return err;
}
