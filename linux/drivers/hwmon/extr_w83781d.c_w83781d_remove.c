
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83781d_data {int * lm75; int hwmon_dev; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;


 int hwmon_device_unregister (int ) ;
 struct w83781d_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int w83781d_remove_files (struct device*) ;

__attribute__((used)) static int
w83781d_remove(struct i2c_client *client)
{
 struct w83781d_data *data = i2c_get_clientdata(client);
 struct device *dev = &client->dev;

 hwmon_device_unregister(data->hwmon_dev);
 w83781d_remove_files(dev);

 i2c_unregister_device(data->lm75[0]);
 i2c_unregister_device(data->lm75[1]);

 return 0;
}
