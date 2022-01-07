
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct TYPE_2__ {int shift; int realbits; } ;
struct iio_chan_spec {int type; TYPE_1__ scan_type; int scan_index; } ;
struct bma180_data {int bw; int scale; int mutex; } ;


 int EINVAL ;






 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int bma180_get_data_reg (struct bma180_data*,int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct bma180_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int ) ;

__attribute__((used)) static int bma180_read_raw(struct iio_dev *indio_dev,
  struct iio_chan_spec const *chan, int *val, int *val2,
  long mask)
{
 struct bma180_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  mutex_lock(&data->mutex);
  ret = bma180_get_data_reg(data, chan->scan_index);
  mutex_unlock(&data->mutex);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;
  *val = sign_extend32(ret >> chan->scan_type.shift,
   chan->scan_type.realbits - 1);
  return IIO_VAL_INT;
 case 132:
  *val = data->bw;
  return IIO_VAL_INT;
 case 129:
  switch (chan->type) {
  case 133:
   *val = 0;
   *val2 = data->scale;
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   *val = 500;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 131:
  *val = 48;
  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }
}
