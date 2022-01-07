
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isl29125_data {int conf1; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int ISL29125_MODE_RANGE ;
 int ISL29125_SENSING_RANGE_0 ;
 int ISL29125_SENSING_RANGE_1 ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct isl29125_data* iio_priv (struct iio_dev*) ;
 int isl29125_read_data (struct isl29125_data*,int ) ;

__attribute__((used)) static int isl29125_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct isl29125_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = isl29125_read_data(data, chan->scan_index);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  if (data->conf1 & ISL29125_MODE_RANGE)
   *val2 = ISL29125_SENSING_RANGE_1;
  else
   *val2 = ISL29125_SENSING_RANGE_0;
  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
