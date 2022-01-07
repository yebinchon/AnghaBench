
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mcp3021_data {int hwmon_dev; } ;
struct TYPE_3__ {int kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct TYPE_4__ {int attr; } ;


 TYPE_2__ dev_attr_in0_input ;
 int hwmon_device_unregister (int ) ;
 struct mcp3021_data* i2c_get_clientdata (struct i2c_client*) ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static int mcp3021_remove(struct i2c_client *client)
{
 struct mcp3021_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 sysfs_remove_file(&client->dev.kobj, &dev_attr_in0_input.attr);

 return 0;
}
