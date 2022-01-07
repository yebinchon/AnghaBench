
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sps30_state {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; int channel2; int type; } ;


 int EINVAL ;







 int IIO_VAL_INT_PLUS_MICRO ;
 struct sps30_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sps30_do_meas (struct sps30_state*,int*,int) ;

__attribute__((used)) static int sps30_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct sps30_state *state = iio_priv(indio_dev);
 int data[4], ret = -EINVAL;

 switch (mask) {
 case 134:
  switch (chan->type) {
  case 132:
   mutex_lock(&state->lock);

   switch (chan->channel2) {
   case 131:
    ret = sps30_do_meas(state, data, 1);
    break;
   case 129:
    ret = sps30_do_meas(state, data, 2);
    break;
   case 128:
    ret = sps30_do_meas(state, data, 3);
    break;
   case 130:
    ret = sps30_do_meas(state, data, 4);
    break;
   }
   mutex_unlock(&state->lock);
   if (ret)
    return ret;

   *val = data[chan->address] / 100;
   *val2 = (data[chan->address] % 100) * 10000;

   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 133:
  switch (chan->type) {
  case 132:
   switch (chan->channel2) {
   case 131:
   case 129:
   case 128:
   case 130:
    *val = 0;
    *val2 = 10000;

    return IIO_VAL_INT_PLUS_MICRO;
   default:
    return -EINVAL;
   }
  default:
   return -EINVAL;
  }
 }

 return -EINVAL;
}
