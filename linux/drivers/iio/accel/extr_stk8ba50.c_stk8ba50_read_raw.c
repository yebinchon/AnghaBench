
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stk8ba50_data {size_t range; size_t sample_rate_idx; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_4__ {int samp_freq; } ;
struct TYPE_3__ {int scale_val; } ;


 int EBUSY ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int STK8BA50_DATA_SHIFT ;
 int STK8BA50_MODE_NORMAL ;
 int STK8BA50_MODE_SUSPEND ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct stk8ba50_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;
 int stk8ba50_read_accel (struct stk8ba50_data*,int ) ;
 TYPE_2__* stk8ba50_samp_freq_table ;
 TYPE_1__* stk8ba50_scale_table ;
 int stk8ba50_set_power (struct stk8ba50_data*,int ) ;

__attribute__((used)) static int stk8ba50_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val, int *val2, long mask)
{
 struct stk8ba50_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  if (iio_buffer_enabled(indio_dev))
   return -EBUSY;
  mutex_lock(&data->lock);
  ret = stk8ba50_set_power(data, STK8BA50_MODE_NORMAL);
  if (ret < 0) {
   mutex_unlock(&data->lock);
   return -EINVAL;
  }
  ret = stk8ba50_read_accel(data, chan->address);
  if (ret < 0) {
   stk8ba50_set_power(data, STK8BA50_MODE_SUSPEND);
   mutex_unlock(&data->lock);
   return -EINVAL;
  }
  *val = sign_extend32(ret >> STK8BA50_DATA_SHIFT, 9);
  stk8ba50_set_power(data, STK8BA50_MODE_SUSPEND);
  mutex_unlock(&data->lock);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = stk8ba50_scale_table[data->range].scale_val;
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  *val = stk8ba50_samp_freq_table
    [data->sample_rate_idx].samp_freq;
  *val2 = 0;
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
