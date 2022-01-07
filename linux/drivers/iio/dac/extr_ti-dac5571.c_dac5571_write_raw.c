
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;
struct dac5571_data {int* val; int (* dac5571_cmd ) (struct dac5571_data*,size_t,int) ;int lock; int powerdown; TYPE_1__* spec; } ;
struct TYPE_2__ {int resolution; } ;


 int EBUSY ;
 int EINVAL ;

 struct dac5571_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct dac5571_data*,size_t,int) ;

__attribute__((used)) static int dac5571_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int val, int val2, long mask)
{
 struct dac5571_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  if (data->val[chan->channel] == val)
   return 0;

  if (val >= (1 << data->spec->resolution) || val < 0)
   return -EINVAL;

  if (data->powerdown)
   return -EBUSY;

  mutex_lock(&data->lock);
  ret = data->dac5571_cmd(data, chan->channel, val);
  if (ret == 0)
   data->val[chan->channel] = val;
  mutex_unlock(&data->lock);
  return ret;

 default:
  return -EINVAL;
 }
}
