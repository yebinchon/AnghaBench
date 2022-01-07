
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpl115_data {int dummy; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct mpl115_data* iio_priv (struct iio_dev*) ;
 int mpl115_comp_pressure (struct mpl115_data*,int*,int*) ;
 int mpl115_read_temp (struct mpl115_data*) ;

__attribute__((used)) static int mpl115_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mpl115_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  ret = mpl115_comp_pressure(data, val, val2);
  if (ret < 0)
   return ret;
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:

  ret = mpl115_read_temp(data);
  if (ret < 0)
   return ret;
  *val = ret >> 6;
  return IIO_VAL_INT;
 case 131:
  *val = -605;
  *val2 = 750000;
  return IIO_VAL_INT_PLUS_MICRO;
 case 128:
  *val = -186;
  *val2 = 915888;
  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
