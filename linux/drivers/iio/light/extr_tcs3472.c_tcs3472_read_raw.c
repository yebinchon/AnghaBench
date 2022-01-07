
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs3472_data {size_t control; int atime; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 size_t TCS3472_CONTROL_AGAIN_MASK ;
 int i2c_smbus_read_word_data (int ,int ) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct tcs3472_data* iio_priv (struct iio_dev*) ;
 int* tcs3472_agains ;
 int tcs3472_req_data (struct tcs3472_data*) ;

__attribute__((used)) static int tcs3472_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct tcs3472_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 128:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;
  ret = tcs3472_req_data(data);
  if (ret < 0) {
   iio_device_release_direct_mode(indio_dev);
   return ret;
  }
  ret = i2c_smbus_read_word_data(data->client, chan->address);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;
  *val = ret;
  return IIO_VAL_INT;
 case 130:
  *val = tcs3472_agains[data->control &
   TCS3472_CONTROL_AGAIN_MASK];
  return IIO_VAL_INT;
 case 129:
  *val = 0;
  *val2 = (256 - data->atime) * 2400;
  return IIO_VAL_INT_PLUS_MICRO;
 }
 return -EINVAL;
}
