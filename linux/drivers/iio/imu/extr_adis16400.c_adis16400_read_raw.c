
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int mlock; } ;
struct iio_chan_spec {size_t scan_index; int channel; int type; } ;
struct adis16400_state {TYPE_1__* variant; int adis; } ;
typedef int int16_t ;
struct TYPE_2__ {int gyro_scale_micro; int accel_scale_micro; int temp_scale_nano; int temp_offset; int (* get_freq ) (struct adis16400_state*) ;} ;


 int ADIS16400_SENS_AVG ;
 int EINVAL ;
 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;

 int* adis16400_3db_divisors ;
 int * adis16400_addresses ;
 int adis_read_reg_16 (int *,int ,int*) ;
 int adis_single_conversion (struct iio_dev*,struct iio_chan_spec const*,int ,int*) ;
 struct adis16400_state* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;
 int stub1 (struct adis16400_state*) ;
 int stub2 (struct adis16400_state*) ;

__attribute__((used)) static int adis16400_read_raw(struct iio_dev *indio_dev,
 struct iio_chan_spec const *chan, int *val, int *val2, long info)
{
 struct adis16400_state *st = iio_priv(indio_dev);
 int16_t val16;
 int ret;

 switch (info) {
 case 134:
  return adis_single_conversion(indio_dev, chan, 0, val);
 case 132:
  switch (chan->type) {
  case 138:
   *val = 0;
   *val2 = st->variant->gyro_scale_micro;
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   *val = 0;
   if (chan->channel == 0) {
    *val = 2;
    *val2 = 418000;
   } else {
    *val = 0;
    *val2 = 805800;
   }
   return IIO_VAL_INT_PLUS_MICRO;
  case 139:
   *val = 0;
   *val2 = st->variant->accel_scale_micro;
   return IIO_VAL_INT_PLUS_MICRO;
  case 131:
   *val = 0;
   *val2 = 500;
   return IIO_VAL_INT_PLUS_MICRO;
  case 129:
   *val = st->variant->temp_scale_nano / 1000000;
   *val2 = (st->variant->temp_scale_nano % 1000000);
   return IIO_VAL_INT_PLUS_MICRO;
  case 130:

   *val = 0;
   *val2 = 2000;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 case 137:
  mutex_lock(&indio_dev->mlock);
  ret = adis_read_reg_16(&st->adis,
    adis16400_addresses[chan->scan_index], &val16);
  mutex_unlock(&indio_dev->mlock);
  if (ret)
   return ret;
  val16 = sign_extend32(val16, 11);
  *val = val16;
  return IIO_VAL_INT;
 case 135:

  *val = st->variant->temp_offset;
  return IIO_VAL_INT;
 case 136:
  mutex_lock(&indio_dev->mlock);

  ret = adis_read_reg_16(&st->adis,
      ADIS16400_SENS_AVG,
      &val16);
  if (ret < 0) {
   mutex_unlock(&indio_dev->mlock);
   return ret;
  }
  ret = st->variant->get_freq(st);
  if (ret >= 0) {
   ret /= adis16400_3db_divisors[val16 & 0x07];
   *val = ret / 1000;
   *val2 = (ret % 1000) * 1000;
  }
  mutex_unlock(&indio_dev->mlock);
  if (ret < 0)
   return ret;
  return IIO_VAL_INT_PLUS_MICRO;
 case 133:
  ret = st->variant->get_freq(st);
  if (ret < 0)
   return ret;
  *val = ret / 1000;
  *val2 = (ret % 1000) * 1000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
