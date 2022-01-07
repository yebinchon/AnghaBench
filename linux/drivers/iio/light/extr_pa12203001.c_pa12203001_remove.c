
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int PA12203001_CHIP_DISABLE ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 int pa12203001_power_chip (struct iio_dev*,int ) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int pa12203001_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);

 return pa12203001_power_chip(indio_dev, PA12203001_CHIP_DISABLE);
}
