
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm36651_data {int lock; } ;


 int EINVAL ;


 int cm36651_read_channel (struct cm36651_data*,struct iio_chan_spec const*,int*) ;
 int cm36651_read_int_time (struct cm36651_data*,struct iio_chan_spec const*,int*) ;
 struct cm36651_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cm36651_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct cm36651_data *cm36651 = iio_priv(indio_dev);
 int ret;

 mutex_lock(&cm36651->lock);

 switch (mask) {
 case 128:
  ret = cm36651_read_channel(cm36651, chan, val);
  break;
 case 129:
  *val = 0;
  ret = cm36651_read_int_time(cm36651, chan, val2);
  break;
 default:
  ret = -EINVAL;
 }

 mutex_unlock(&cm36651->lock);

 return ret;
}
