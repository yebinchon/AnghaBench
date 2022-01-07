
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;
struct hdc100x_data {int lock; } ;


 int EINVAL ;
 int HDC100X_REG_CONFIG_HEATER_EN ;


 int IIO_CURRENT ;
 int hdc100x_set_it_time (struct hdc100x_data*,int ,int) ;
 int hdc100x_update_config (struct hdc100x_data*,int ,int ) ;
 struct hdc100x_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hdc100x_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct hdc100x_data *data = iio_priv(indio_dev);
 int ret = -EINVAL;

 switch (mask) {
 case 129:
  if (val != 0)
   return -EINVAL;

  mutex_lock(&data->lock);
  ret = hdc100x_set_it_time(data, chan->address, val2);
  mutex_unlock(&data->lock);
  return ret;
 case 128:
  if (chan->type != IIO_CURRENT || val2 != 0)
   return -EINVAL;

  mutex_lock(&data->lock);
  ret = hdc100x_update_config(data, HDC100X_REG_CONFIG_HEATER_EN,
     val ? HDC100X_REG_CONFIG_HEATER_EN : 0);
  mutex_unlock(&data->lock);
  return ret;
 default:
  return -EINVAL;
 }
}
