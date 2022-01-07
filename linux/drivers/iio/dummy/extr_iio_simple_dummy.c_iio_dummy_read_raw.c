
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dummy_state {int dac_val; int* differential_adc_val; int single_ended_adc_val; int accel_val; int steps; int activity_running; int activity_walking; int accel_calibbias; int steps_enabled; int height; int lock; TYPE_1__* accel_calibscale; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; int type; int differential; int channel2; int output; } ;
struct TYPE_2__ {int val; int val2; } ;


 int EINVAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;

 struct iio_dummy_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iio_dummy_read_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan,
         int *val,
         int *val2,
         long mask)
{
 struct iio_dummy_state *st = iio_priv(indio_dev);
 int ret = -EINVAL;

 mutex_lock(&st->lock);
 switch (mask) {
 case 134:
  switch (chan->type) {
  case 128:
   if (chan->output) {

    *val = st->dac_val;
    ret = IIO_VAL_INT;
   } else if (chan->differential) {
    if (chan->channel == 1)
     *val = st->differential_adc_val[0];
    else
     *val = st->differential_adc_val[1];
    ret = IIO_VAL_INT;
   } else {
    *val = st->single_ended_adc_val;
    ret = IIO_VAL_INT;
   }
   break;
  case 142:
   *val = st->accel_val;
   ret = IIO_VAL_INT;
   break;
  default:
   break;
  }
  break;
 case 135:
  switch (chan->type) {
  case 129:
   *val = st->steps;
   ret = IIO_VAL_INT;
   break;
  case 141:
   switch (chan->channel2) {
   case 131:
    *val = st->activity_running;
    ret = IIO_VAL_INT;
    break;
   case 130:
    *val = st->activity_walking;
    ret = IIO_VAL_INT;
    break;
   default:
    break;
   }
   break;
  default:
   break;
  }
  break;
 case 136:

  *val = 7;
  ret = IIO_VAL_INT;
  break;
 case 132:
  switch (chan->type) {
  case 128:
   switch (chan->differential) {
   case 0:

    *val = 0;
    *val2 = 1333;
    ret = IIO_VAL_INT_PLUS_MICRO;
    break;
   case 1:

    *val = 0;
    *val2 = 1344;
    ret = IIO_VAL_INT_PLUS_NANO;
   }
   break;
  default:
   break;
  }
  break;
 case 140:

  *val = st->accel_calibbias;
  ret = IIO_VAL_INT;
  break;
 case 138:
  *val = st->accel_calibscale->val;
  *val2 = st->accel_calibscale->val2;
  ret = IIO_VAL_INT_PLUS_MICRO;
  break;
 case 133:
  *val = 3;
  *val2 = 33;
  ret = IIO_VAL_INT_PLUS_NANO;
  break;
 case 137:
  switch (chan->type) {
  case 129:
   *val = st->steps_enabled;
   ret = IIO_VAL_INT;
   break;
  default:
   break;
  }
  break;
 case 139:
  switch (chan->type) {
  case 129:
   *val = st->height;
   ret = IIO_VAL_INT;
   break;
  default:
   break;
  }
  break;

 default:
  break;
 }
 mutex_unlock(&st->lock);
 return ret;
}
