
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct abp_state {int offset; int scale; int lock; } ;


 int ABP060MG_NUM_COUNTS ;
 int EINVAL ;



 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int abp060mg_get_measurement (struct abp_state*,int*) ;
 struct abp_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int abp060mg_read_raw(struct iio_dev *indio_dev,
   struct iio_chan_spec const *chan, int *val,
   int *val2, long mask)
{
 struct abp_state *state = iio_priv(indio_dev);
 int ret;

 mutex_lock(&state->lock);

 switch (mask) {
 case 129:
  ret = abp060mg_get_measurement(state, val);
  break;
 case 130:
  *val = state->offset;
  ret = IIO_VAL_INT;
  break;
 case 128:
  *val = state->scale;
  *val2 = ABP060MG_NUM_COUNTS * 1000;
  ret = IIO_VAL_FRACTIONAL;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&state->lock);
 return ret;
}
