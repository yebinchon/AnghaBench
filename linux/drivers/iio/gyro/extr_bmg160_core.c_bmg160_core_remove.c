
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct bmg160_data {int mutex; scalar_t__ motion_trig; scalar_t__ dready_trig; } ;


 int BMG160_MODE_DEEP_SUSPEND ;
 int bmg160_set_mode (struct bmg160_data*,int ) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct bmg160_data* iio_priv (struct iio_dev*) ;
 int iio_trigger_unregister (scalar_t__) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;

void bmg160_core_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct bmg160_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 pm_runtime_put_noidle(dev);

 iio_triggered_buffer_cleanup(indio_dev);

 if (data->dready_trig) {
  iio_trigger_unregister(data->dready_trig);
  iio_trigger_unregister(data->motion_trig);
 }

 mutex_lock(&data->mutex);
 bmg160_set_mode(data, BMG160_MODE_DEEP_SUSPEND);
 mutex_unlock(&data->mutex);
}
