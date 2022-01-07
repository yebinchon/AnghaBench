
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsa1212_data {size_t als_rng_idx; int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int BIT (int) ;
 int EINVAL ;




 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 struct jsa1212_data* iio_priv (struct iio_dev*) ;
 int* jsa1212_als_range_val ;
 int jsa1212_read_als_data (struct jsa1212_data*,int*) ;
 int jsa1212_read_pxs_data (struct jsa1212_data*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int jsa1212_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 int ret;
 struct jsa1212_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 131:
  mutex_lock(&data->lock);
  switch (chan->type) {
  case 129:
   ret = jsa1212_read_als_data(data, val);
   break;
  case 128:
   ret = jsa1212_read_pxs_data(data, val);
   break;
  default:
   ret = -EINVAL;
   break;
  }
  mutex_unlock(&data->lock);
  return ret < 0 ? ret : IIO_VAL_INT;
 case 130:
  switch (chan->type) {
  case 129:
   *val = jsa1212_als_range_val[data->als_rng_idx];
   *val2 = BIT(12);
   return IIO_VAL_FRACTIONAL;
  default:
   break;
  }
  break;
 default:
  break;
 }

 return -EINVAL;
}
