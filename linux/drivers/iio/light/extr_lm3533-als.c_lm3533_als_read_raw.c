
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; int type; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int lm3533_als_get_adc (struct iio_dev*,int,int*) ;
 int lm3533_als_get_current (struct iio_dev*,int ,int*) ;

__attribute__((used)) static int lm3533_als_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 int ret;

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 128:
   ret = lm3533_als_get_adc(indio_dev, 0, val);
   break;
  case 129:
   ret = lm3533_als_get_current(indio_dev, chan->channel,
         val);
   break;
  default:
   return -EINVAL;
  }
  break;
 case 131:
  ret = lm3533_als_get_adc(indio_dev, 1, val);
  break;
 default:
  return -EINVAL;
 }

 if (ret)
  return ret;

 return IIO_VAL_INT;
}
