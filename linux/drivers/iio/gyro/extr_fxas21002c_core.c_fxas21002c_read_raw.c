
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int scan_index; } ;
struct fxas21002c_data {int dummy; } ;


 int EINVAL ;
 int FXAS21002C_SCALE_FRACTIONAL ;







 int IIO_VAL_FRACTIONAL ;
 int fxas21002c_axis_get (struct fxas21002c_data*,int ,int*) ;
 int fxas21002c_hpf_get (struct fxas21002c_data*,int*) ;
 int fxas21002c_lpf_get (struct fxas21002c_data*,int*) ;
 int fxas21002c_odr_get (struct fxas21002c_data*,int*) ;
 int fxas21002c_scale_get (struct fxas21002c_data*,int*) ;
 int fxas21002c_temp_get (struct fxas21002c_data*,int*) ;
 struct fxas21002c_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int fxas21002c_read_raw(struct iio_dev *indio_dev,
          struct iio_chan_spec const *chan, int *val,
          int *val2, long mask)
{
 struct fxas21002c_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 128:
   return fxas21002c_temp_get(data, val);
  case 134:
   return fxas21002c_axis_get(data, chan->scan_index, val);
  default:
   return -EINVAL;
  }
 case 129:
  switch (chan->type) {
  case 134:
   *val2 = FXAS21002C_SCALE_FRACTIONAL;
   ret = fxas21002c_scale_get(data, val);
   if (ret < 0)
    return ret;

   return IIO_VAL_FRACTIONAL;
  default:
   return -EINVAL;
  }
 case 132:
  *val = 0;
  return fxas21002c_lpf_get(data, val2);
 case 133:
  *val = 0;
  return fxas21002c_hpf_get(data, val2);
 case 130:
  *val2 = 0;
  return fxas21002c_odr_get(data, val);
 default:
  return -EINVAL;
 }
}
