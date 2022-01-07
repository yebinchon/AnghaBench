
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct fxas21002c_data {int dummy; } ;


 int EINVAL ;
 int FXAS21002C_SCALE_FRACTIONAL ;





 int fxas21002c_hpf_set (struct fxas21002c_data*,int) ;
 int fxas21002c_lpf_set (struct fxas21002c_data*,int) ;
 int fxas21002c_odr_set (struct fxas21002c_data*,int) ;
 int fxas21002c_scale_set (struct fxas21002c_data*,int) ;
 struct fxas21002c_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int fxas21002c_write_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan, int val,
    int val2, long mask)
{
 struct fxas21002c_data *data = iio_priv(indio_dev);
 int range;

 switch (mask) {
 case 129:
  if (val2)
   return -EINVAL;

  return fxas21002c_odr_set(data, val);
 case 130:
  if (val)
   return -EINVAL;

  val2 = val2 / 10000;
  return fxas21002c_lpf_set(data, val2);
 case 128:
  switch (chan->type) {
  case 132:
   range = (((val * 1000 + val2 / 1000) *
      FXAS21002C_SCALE_FRACTIONAL) / 1000);
   return fxas21002c_scale_set(data, range);
  default:
   return -EINVAL;
  }
 case 131:
  return fxas21002c_hpf_set(data, val2);
 default:
  return -EINVAL;
 }
}
