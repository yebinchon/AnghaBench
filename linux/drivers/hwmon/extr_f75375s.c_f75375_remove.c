
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct f75375_data {int hwmon_dev; } ;


 int f75375_group ;
 int hwmon_device_unregister (int ) ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int f75375_remove(struct i2c_client *client)
{
 struct f75375_data *data = i2c_get_clientdata(client);
 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_group(&client->dev.kobj, &f75375_group);
 return 0;
}
