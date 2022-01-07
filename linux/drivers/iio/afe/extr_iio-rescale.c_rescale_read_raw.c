
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rescale {int numerator; int denominator; int source; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;





 int do_div (unsigned long long,long long) ;
 struct rescale* iio_priv (struct iio_dev*) ;
 int iio_read_channel_raw (int ,int*) ;
 int iio_read_channel_scale (int ,int*,int*) ;

__attribute__((used)) static int rescale_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct rescale *rescale = iio_priv(indio_dev);
 unsigned long long tmp;
 int ret;

 switch (mask) {
 case 132:
  return iio_read_channel_raw(rescale->source, val);

 case 131:
  ret = iio_read_channel_scale(rescale->source, val, val2);
  switch (ret) {
  case 130:
   *val *= rescale->numerator;
   *val2 *= rescale->denominator;
   return ret;
  case 128:
   *val *= rescale->numerator;
   if (rescale->denominator == 1)
    return ret;
   *val2 = rescale->denominator;
   return 130;
  case 129:
   tmp = *val * 1000000000LL;
   do_div(tmp, rescale->denominator);
   tmp *= rescale->numerator;
   do_div(tmp, 1000000000LL);
   *val = tmp;
   return ret;
  default:
   return -EOPNOTSUPP;
  }
 default:
  return -EINVAL;
 }
}
