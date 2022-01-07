
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;






 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int zpa2326_get_frequency (struct iio_dev*) ;
 int zpa2326_sample_oneshot (struct iio_dev*,int ,int*) ;

__attribute__((used)) static int zpa2326_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val,
       int *val2,
       long mask)
{
 switch (mask) {
 case 132:
  return zpa2326_sample_oneshot(indio_dev, chan->type, val);

 case 130:
  switch (chan->type) {
  case 129:




   *val = 1;
   *val2 = 64000;
   return IIO_VAL_FRACTIONAL;

  case 128:
   *val = 6;
   *val2 = 490000;
   return IIO_VAL_INT_PLUS_MICRO;

  default:
   return -EINVAL;
  }

 case 133:
  switch (chan->type) {
  case 128:
   *val = -17683000;
   *val2 = 649;
   return IIO_VAL_FRACTIONAL;

  default:
   return -EINVAL;
  }

 case 131:
  *val = zpa2326_get_frequency(indio_dev);
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
