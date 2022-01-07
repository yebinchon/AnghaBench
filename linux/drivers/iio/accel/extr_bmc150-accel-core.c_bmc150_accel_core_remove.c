
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct device {int dummy; } ;
struct bmc150_accel_data {int mutex; } ;


 int BMC150_ACCEL_SLEEP_MODE_DEEP_SUSPEND ;
 scalar_t__ BMC150_ACCEL_TRIGGERS ;
 int bmc150_accel_set_mode (struct bmc150_accel_data*,int ,int ) ;
 int bmc150_accel_unregister_triggers (struct bmc150_accel_data*,scalar_t__) ;
 struct iio_dev* dev_get_drvdata (struct device*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct bmc150_accel_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_cleanup (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_put_noidle (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;

int bmc150_accel_core_remove(struct device *dev)
{
 struct iio_dev *indio_dev = dev_get_drvdata(dev);
 struct bmc150_accel_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 pm_runtime_put_noidle(dev);

 bmc150_accel_unregister_triggers(data, BMC150_ACCEL_TRIGGERS - 1);

 iio_triggered_buffer_cleanup(indio_dev);

 mutex_lock(&data->mutex);
 bmc150_accel_set_mode(data, BMC150_ACCEL_SLEEP_MODE_DEEP_SUSPEND, 0);
 mutex_unlock(&data->mutex);

 return 0;
}
