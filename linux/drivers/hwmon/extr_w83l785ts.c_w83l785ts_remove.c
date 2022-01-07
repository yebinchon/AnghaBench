
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct w83l785ts_data {int hwmon_dev; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {int dev_attr; } ;
struct TYPE_3__ {int dev_attr; } ;


 int device_remove_file (int *,int *) ;
 int hwmon_device_unregister (int ) ;
 struct w83l785ts_data* i2c_get_clientdata (struct i2c_client*) ;
 TYPE_2__ sensor_dev_attr_temp1_input ;
 TYPE_1__ sensor_dev_attr_temp1_max ;

__attribute__((used)) static int w83l785ts_remove(struct i2c_client *client)
{
 struct w83l785ts_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 device_remove_file(&client->dev,
      &sensor_dev_attr_temp1_input.dev_attr);
 device_remove_file(&client->dev,
      &sensor_dev_attr_temp1_max.dev_attr);

 return 0;
}
