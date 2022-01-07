
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83795_data {int hwmon_dev; } ;
struct i2c_client {int dev; } ;


 int device_remove_file_wrapper ;
 int hwmon_device_unregister (int ) ;
 struct w83795_data* i2c_get_clientdata (struct i2c_client*) ;
 int w83795_handle_files (int *,int ) ;

__attribute__((used)) static int w83795_remove(struct i2c_client *client)
{
 struct w83795_data *data = i2c_get_clientdata(client);

 hwmon_device_unregister(data->hwmon_dev);
 w83795_handle_files(&client->dev, device_remove_file_wrapper);

 return 0;
}
