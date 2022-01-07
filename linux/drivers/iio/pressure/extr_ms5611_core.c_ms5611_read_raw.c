
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ms5611_state {int lock; TYPE_2__* pressure_osr; TYPE_1__* temp_osr; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; } ;
typedef int s32 ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct TYPE_3__ {scalar_t__ rate; } ;


 int EINVAL ;





 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int ms5611_read_temp_and_pressure (struct iio_dev*,int*,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ms5611_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 int ret;
 s32 temp, pressure;
 struct ms5611_state *st = iio_priv(indio_dev);

 switch (mask) {
 case 131:
  mutex_lock(&st->lock);
  ret = ms5611_read_temp_and_pressure(indio_dev,
          &temp, &pressure);
  mutex_unlock(&st->lock);
  if (ret < 0)
   return ret;

  switch (chan->type) {
  case 128:
   *val = temp * 10;
   return IIO_VAL_INT;
  case 129:
   *val = pressure / 1000;
   *val2 = (pressure % 1000) * 1000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 130:
  switch (chan->type) {
  case 128:
   *val = 10;
   return IIO_VAL_INT;
  case 129:
   *val = 0;
   *val2 = 1000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 132:
  if (chan->type != 128 && chan->type != 129)
   break;
  mutex_lock(&st->lock);
  if (chan->type == 128)
   *val = (int)st->temp_osr->rate;
  else
   *val = (int)st->pressure_osr->rate;
  mutex_unlock(&st->lock);
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
