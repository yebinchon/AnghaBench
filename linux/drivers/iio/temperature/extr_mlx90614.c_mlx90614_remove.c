
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx90614_data {scalar_t__ wakeup_gpio; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct mlx90614_data* iio_priv (struct iio_dev*) ;
 int mlx90614_sleep (struct mlx90614_data*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int pm_runtime_status_suspended (int *) ;

__attribute__((used)) static int mlx90614_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct mlx90614_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 if (data->wakeup_gpio) {
  pm_runtime_disable(&client->dev);
  if (!pm_runtime_status_suspended(&client->dev))
   mlx90614_sleep(data);
  pm_runtime_set_suspended(&client->dev);
 }

 return 0;
}
