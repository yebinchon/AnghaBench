
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct hdc100x_data {int lock; } ;


 int HDC100X_REG_CONFIG_ACQ_MODE ;
 int hdc100x_update_config (struct hdc100x_data*,int ,int ) ;
 struct hdc100x_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_postenable (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdc100x_buffer_postenable(struct iio_dev *indio_dev)
{
 struct hdc100x_data *data = iio_priv(indio_dev);
 int ret;


 mutex_lock(&data->lock);
 ret = hdc100x_update_config(data, HDC100X_REG_CONFIG_ACQ_MODE,
        HDC100X_REG_CONFIG_ACQ_MODE);
 mutex_unlock(&data->lock);
 if (ret)
  return ret;

 return iio_triggered_buffer_postenable(indio_dev);
}
