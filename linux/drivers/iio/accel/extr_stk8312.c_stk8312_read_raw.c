
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stk8312_data {int mode; size_t sample_rate_idx; int range; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
struct TYPE_2__ {int val; int val2; } ;


 int EBUSY ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int STK8312_MODE_ACTIVE ;
 int iio_buffer_enabled (struct iio_dev*) ;
 struct stk8312_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;
 int stk8312_read_accel (struct stk8312_data*,int ) ;
 TYPE_1__* stk8312_samp_freq_table ;
 int** stk8312_scale_table ;
 int stk8312_set_mode (struct stk8312_data*,int) ;

__attribute__((used)) static int stk8312_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct stk8312_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  if (iio_buffer_enabled(indio_dev))
   return -EBUSY;
  mutex_lock(&data->lock);
  ret = stk8312_set_mode(data, data->mode | STK8312_MODE_ACTIVE);
  if (ret < 0) {
   mutex_unlock(&data->lock);
   return ret;
  }
  ret = stk8312_read_accel(data, chan->address);
  if (ret < 0) {
   stk8312_set_mode(data,
      data->mode & (~STK8312_MODE_ACTIVE));
   mutex_unlock(&data->lock);
   return ret;
  }
  *val = sign_extend32(ret, 7);
  ret = stk8312_set_mode(data,
           data->mode & (~STK8312_MODE_ACTIVE));
  mutex_unlock(&data->lock);
  if (ret < 0)
   return ret;
  return IIO_VAL_INT;
 case 128:
  *val = stk8312_scale_table[data->range - 1][0];
  *val2 = stk8312_scale_table[data->range - 1][1];
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  *val = stk8312_samp_freq_table[data->sample_rate_idx].val;
  *val2 = stk8312_samp_freq_table[data->sample_rate_idx].val2;
  return IIO_VAL_INT_PLUS_MICRO;
 }

 return -EINVAL;
}
