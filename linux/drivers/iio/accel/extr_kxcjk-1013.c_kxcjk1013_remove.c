
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kxcjk1013_data {int mutex; scalar_t__ motion_trig; scalar_t__ dready_trig; } ;
struct iio_dev {int dummy; } ;
struct i2c_client {int dev; } ;


 int STANDBY ;
 struct iio_dev* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_unregister (scalar_t__) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int kxcjk1013_set_mode (struct kxcjk1013_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int kxcjk1013_remove(struct i2c_client *client)
{
 struct iio_dev *indio_dev = i2c_get_clientdata(client);
 struct kxcjk1013_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);

 if (data->dready_trig) {
  iio_triggered_buffer_cleanup(indio_dev);
  iio_trigger_unregister(data->dready_trig);
  iio_trigger_unregister(data->motion_trig);
 }

 mutex_lock(&data->mutex);
 kxcjk1013_set_mode(data, STANDBY);
 mutex_unlock(&data->mutex);

 return 0;
}
