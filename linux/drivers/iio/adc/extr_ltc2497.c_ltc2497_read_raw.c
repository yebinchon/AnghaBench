
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2497_st {int ref; } ;
struct iio_dev {int mlock; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;
 struct ltc2497_st* iio_priv (struct iio_dev*) ;
 int ltc2497_read (struct ltc2497_st*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ltc2497_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct ltc2497_st *st = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&indio_dev->mlock);
  ret = ltc2497_read(st, chan->address, val);
  mutex_unlock(&indio_dev->mlock);
  if (ret < 0)
   return ret;

  return IIO_VAL_INT;

 case 128:
  ret = regulator_get_voltage(st->ref);
  if (ret < 0)
   return ret;

  *val = ret / 1000;
  *val2 = 17;

  return IIO_VAL_FRACTIONAL_LOG2;

 default:
  return -EINVAL;
 }
}
