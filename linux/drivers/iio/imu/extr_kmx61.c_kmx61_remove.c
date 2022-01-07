
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmx61_data {int lock; int motion_trig; int mag_dready_trig; int acc_dready_trig; int mag_indio_dev; int acc_indio_dev; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 int KMX61_ACC ;
 int KMX61_ALL_STBY ;
 int KMX61_MAG ;
 struct kmx61_data* i2c_get_clientdata (struct i2c_client*) ;
 int iio_device_unregister (int ) ;
 int iio_trigger_unregister (int ) ;
 int iio_triggered_buffer_cleanup (int ) ;
 int kmx61_set_mode (struct kmx61_data*,int ,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;

__attribute__((used)) static int kmx61_remove(struct i2c_client *client)
{
 struct kmx61_data *data = i2c_get_clientdata(client);

 iio_device_unregister(data->acc_indio_dev);
 iio_device_unregister(data->mag_indio_dev);

 pm_runtime_disable(&client->dev);
 pm_runtime_set_suspended(&client->dev);
 pm_runtime_put_noidle(&client->dev);

 if (client->irq > 0) {
  iio_triggered_buffer_cleanup(data->acc_indio_dev);
  iio_triggered_buffer_cleanup(data->mag_indio_dev);
  iio_trigger_unregister(data->acc_dready_trig);
  iio_trigger_unregister(data->mag_dready_trig);
  iio_trigger_unregister(data->motion_trig);
 }

 mutex_lock(&data->lock);
 kmx61_set_mode(data, KMX61_ALL_STBY, KMX61_ACC | KMX61_MAG, 1);
 mutex_unlock(&data->lock);

 return 0;
}
