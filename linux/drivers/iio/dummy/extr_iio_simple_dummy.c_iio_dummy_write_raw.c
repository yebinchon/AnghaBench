
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dummy_state {int dac_val; int steps; int activity_running; int activity_walking; int accel_calibbias; int steps_enabled; int height; int lock; TYPE_1__* accel_calibscale; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel2; int output; } ;
struct TYPE_3__ {int val; int val2; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* dummy_scales ;
 struct iio_dummy_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int iio_dummy_write_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan,
          int val,
          int val2,
          long mask)
{
 int i;
 int ret = 0;
 struct iio_dummy_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 132:
  switch (chan->type) {
  case 128:
   if (chan->output == 0)
    return -EINVAL;


   mutex_lock(&st->lock);
   st->dac_val = val;
   mutex_unlock(&st->lock);
   return 0;
  default:
   return -EINVAL;
  }
 case 133:
  switch (chan->type) {
  case 129:
   mutex_lock(&st->lock);
   st->steps = val;
   mutex_unlock(&st->lock);
   return 0;
  case 138:
   if (val < 0)
    val = 0;
   if (val > 100)
    val = 100;
   switch (chan->channel2) {
   case 131:
    st->activity_running = val;
    return 0;
   case 130:
    st->activity_walking = val;
    return 0;
   default:
    return -EINVAL;
   }
   break;
  default:
   return -EINVAL;
  }
 case 135:
  mutex_lock(&st->lock);

  for (i = 0; i < ARRAY_SIZE(dummy_scales); i++)
   if (val == dummy_scales[i].val &&
       val2 == dummy_scales[i].val2)
    break;
  if (i == ARRAY_SIZE(dummy_scales))
   ret = -EINVAL;
  else
   st->accel_calibscale = &dummy_scales[i];
  mutex_unlock(&st->lock);
  return ret;
 case 137:
  mutex_lock(&st->lock);
  st->accel_calibbias = val;
  mutex_unlock(&st->lock);
  return 0;
 case 134:
  switch (chan->type) {
  case 129:
   mutex_lock(&st->lock);
   st->steps_enabled = val;
   mutex_unlock(&st->lock);
   return 0;
  default:
   return -EINVAL;
  }
 case 136:
  switch (chan->type) {
  case 129:
   st->height = val;
   return 0;
  default:
   return -EINVAL;
  }

 default:
  return -EINVAL;
 }
}
