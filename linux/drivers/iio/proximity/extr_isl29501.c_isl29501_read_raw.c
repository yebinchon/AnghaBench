
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29501_private {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;





 struct isl29501_private* iio_priv (struct iio_dev*) ;
 int isl29501_get_calibbias (struct isl29501_private*,struct iio_chan_spec const*,int*) ;
 int isl29501_get_freq (struct isl29501_private*,int*,int*) ;
 int isl29501_get_inttime (struct isl29501_private*,int*,int*) ;
 int isl29501_get_raw (struct isl29501_private*,struct iio_chan_spec const*,int*) ;
 int isl29501_get_scale (struct isl29501_private*,struct iio_chan_spec const*,int*,int*) ;

__attribute__((used)) static int isl29501_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val,
        int *val2, long mask)
{
 struct isl29501_private *isl29501 = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  return isl29501_get_raw(isl29501, chan, val);
 case 128:
  return isl29501_get_scale(isl29501, chan, val, val2);
 case 131:
  return isl29501_get_inttime(isl29501, val, val2);
 case 129:
  return isl29501_get_freq(isl29501, val, val2);
 case 132:
  return isl29501_get_calibbias(isl29501, chan, val);
 default:
  return -EINVAL;
 }
}
