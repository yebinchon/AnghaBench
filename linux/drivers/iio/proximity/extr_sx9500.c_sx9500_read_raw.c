
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sx9500_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;



 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct sx9500_data* iio_priv (struct iio_dev*) ;
 int sx9500_read_proximity (struct sx9500_data*,struct iio_chan_spec const*,int*) ;
 int sx9500_read_samp_freq (struct sx9500_data*,int*,int*) ;

__attribute__((used)) static int sx9500_read_raw(struct iio_dev *indio_dev,
      const struct iio_chan_spec *chan,
      int *val, int *val2, long mask)
{
 struct sx9500_data *data = iio_priv(indio_dev);
 int ret;

 switch (chan->type) {
 case 128:
  switch (mask) {
  case 130:
   ret = iio_device_claim_direct_mode(indio_dev);
   if (ret)
    return ret;
   ret = sx9500_read_proximity(data, chan, val);
   iio_device_release_direct_mode(indio_dev);
   return ret;
  case 129:
   return sx9500_read_samp_freq(data, val, val2);
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
