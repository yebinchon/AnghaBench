
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpr0521_data {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int address; } ;


 int EINVAL ;



 struct rpr0521_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpr0521_set_gain (struct rpr0521_data*,int ,int,int) ;
 int rpr0521_write_ps_offset (struct rpr0521_data*,int) ;
 int rpr0521_write_samp_freq_common (struct rpr0521_data*,int ,int,int) ;

__attribute__((used)) static int rpr0521_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int val,
        int val2, long mask)
{
 struct rpr0521_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  mutex_lock(&data->lock);
  ret = rpr0521_set_gain(data, chan->address, val, val2);
  mutex_unlock(&data->lock);

  return ret;

 case 129:
  mutex_lock(&data->lock);
  ret = rpr0521_write_samp_freq_common(data, chan->type,
           val, val2);
  mutex_unlock(&data->lock);

  return ret;

 case 130:
  mutex_lock(&data->lock);
  ret = rpr0521_write_ps_offset(data, val);
  mutex_unlock(&data->lock);

  return ret;

 default:
  return -EINVAL;
 }
}
