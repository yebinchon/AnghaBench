
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attrs; } ;
struct pmbus_data {TYPE_1__ group; int hwmon_dev; int debugfs; } ;
struct i2c_client {int dummy; } ;


 int debugfs_remove_recursive (int ) ;
 int hwmon_device_unregister (int ) ;
 struct pmbus_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int ) ;

int pmbus_do_remove(struct i2c_client *client)
{
 struct pmbus_data *data = i2c_get_clientdata(client);

 debugfs_remove_recursive(data->debugfs);

 hwmon_device_unregister(data->hwmon_dev);
 kfree(data->group.attrs);
 return 0;
}
