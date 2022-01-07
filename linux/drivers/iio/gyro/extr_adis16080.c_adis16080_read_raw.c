
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct iio_chan_spec {int type; int address; } ;
struct adis16080_state {TYPE_1__* info; } ;
struct TYPE_2__ {int scale_val; int scale_val2; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int EINVAL ;





 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;

 int adis16080_read_sample (struct iio_dev*,int ,int*) ;
 struct adis16080_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int adis16080_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan,
        int *val,
        int *val2,
        long mask)
{
 struct adis16080_state *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 131:
  mutex_lock(&indio_dev->mlock);
  ret = adis16080_read_sample(indio_dev, chan->address, val);
  mutex_unlock(&indio_dev->mlock);
  return ret ? ret : IIO_VAL_INT;
 case 130:
  switch (chan->type) {
  case 133:
   *val = st->info->scale_val;
   *val2 = st->info->scale_val2;
   return IIO_VAL_FRACTIONAL;
  case 128:

   *val = 5000;
   *val2 = 12;
   return IIO_VAL_FRACTIONAL_LOG2;
  case 129:

   *val = 85000 - 25000;
   *val2 = 585;
   return IIO_VAL_FRACTIONAL;
  default:
   return -EINVAL;
  }
 case 132:
  switch (chan->type) {
  case 128:

   *val = 2048;
   return IIO_VAL_INT;
  case 129:

   *val = DIV_ROUND_CLOSEST(25 * 585, 85 - 25);
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  break;
 }

 return -EINVAL;
}
