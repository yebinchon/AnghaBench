
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t5403_data {size_t mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct t5403_data* iio_priv (struct iio_dev*) ;
 int t5403_comp_pressure (struct t5403_data*,int*,int*) ;
 int t5403_comp_temp (struct t5403_data*,int*) ;
 int* t5403_pressure_conv_ms ;

__attribute__((used)) static int t5403_read_raw(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan,
     int *val, int *val2, long mask)
{
 struct t5403_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 129:
   ret = t5403_comp_pressure(data, val, val2);
   if (ret < 0)
    return ret;
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   ret = t5403_comp_temp(data, val);
   if (ret < 0)
    return ret;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
     }
 case 131:
  *val = 0;
  *val2 = t5403_pressure_conv_ms[data->mode] * 1000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
