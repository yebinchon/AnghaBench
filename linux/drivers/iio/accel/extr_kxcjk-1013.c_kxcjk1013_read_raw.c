
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kxcjk1013_data {size_t range; int mutex; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct TYPE_2__ {int scale; } ;


 int EBUSY ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 TYPE_1__* KXCJK1013_scale_table ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 int kxcjk1013_get_acc_reg (struct kxcjk1013_data*,int ) ;
 int kxcjk1013_get_odr (struct kxcjk1013_data*,int*,int*) ;
 int kxcjk1013_set_power_state (struct kxcjk1013_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int kxcjk1013_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan, int *val,
         int *val2, long mask)
{
 struct kxcjk1013_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  mutex_lock(&data->mutex);
  if (iio_buffer_enabled(indio_dev))
   ret = -EBUSY;
  else {
   ret = kxcjk1013_set_power_state(data, 1);
   if (ret < 0) {
    mutex_unlock(&data->mutex);
    return ret;
   }
   ret = kxcjk1013_get_acc_reg(data, chan->scan_index);
   if (ret < 0) {
    kxcjk1013_set_power_state(data, 0);
    mutex_unlock(&data->mutex);
    return ret;
   }
   *val = sign_extend32(ret >> 4, 11);
   ret = kxcjk1013_set_power_state(data, 0);
  }
  mutex_unlock(&data->mutex);

  if (ret < 0)
   return ret;

  return IIO_VAL_INT;

 case 128:
  *val = 0;
  *val2 = KXCJK1013_scale_table[data->range].scale;
  return IIO_VAL_INT_PLUS_MICRO;

 case 129:
  mutex_lock(&data->mutex);
  ret = kxcjk1013_get_odr(data, val, val2);
  mutex_unlock(&data->mutex);
  return ret;

 default:
  return -EINVAL;
 }
}
