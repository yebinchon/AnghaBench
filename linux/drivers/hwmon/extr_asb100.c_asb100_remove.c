
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct asb100_data {int * lm75; int hwmon_dev; } ;


 int asb100_group ;
 int hwmon_device_unregister (int ) ;
 struct asb100_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int asb100_remove(struct i2c_client *client)
{
 struct asb100_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &asb100_group);

 i2c_unregister_device(data->lm75[1]);
 i2c_unregister_device(data->lm75[0]);

 return 0;
}
