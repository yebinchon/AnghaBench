
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct ak8975_data {int dummy; } ;


 int POWER_DOWN ;
 int ak8975_power_off (struct ak8975_data*) ;
 int ak8975_set_mode (struct ak8975_data*,int ) ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct ak8975_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int ak8975_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct ak8975_data *data = iio_priv(indio_dev);

 pm_runtime_get_sync(&client->dev);
 pm_runtime_put_noidle(&client->dev);
 pm_runtime_disable(&client->dev);
 iio_device_unregister(indio_dev);
 iio_triggered_buffer_cleanup(indio_dev);
 ak8975_set_mode(data, POWER_DOWN);
 ak8975_power_off(data);

 return 0;
}
