
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct ads1015_data {int dummy; } ;


 int ADS1015_SINGLESHOT ;
 int ads1015_set_conv_mode (struct ads1015_data*,int ) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ads1015_data* iio_priv (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int ads1015_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ads1015_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);


 return ads1015_set_conv_mode(data, ADS1015_SINGLESHOT);
}
