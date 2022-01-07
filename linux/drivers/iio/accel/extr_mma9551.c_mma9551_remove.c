
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma9551_data {int mutex; int client; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct mma9551_data* iio_priv (struct iio_dev*) ;
 int mma9551_set_device_state (int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int mma9551_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct mma9551_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);

 mutex_lock(&data->mutex);
 mma9551_set_device_state(data->client, 0);
 mutex_unlock(&data->mutex);

 return 0;
}
