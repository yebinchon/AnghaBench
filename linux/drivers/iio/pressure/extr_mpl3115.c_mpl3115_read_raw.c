
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mpl3115_data {int lock; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
typedef int __be32 ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int MPL3115_OUT_PRESS ;
 int MPL3115_OUT_TEMP ;
 int be32_to_cpu (int ) ;
 int i2c_smbus_read_i2c_block_data (int ,int ,int,int *) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct mpl3115_data* iio_priv (struct iio_dev*) ;
 int mpl3115_request (struct mpl3115_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int mpl3115_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mpl3115_data *data = iio_priv(indio_dev);
 __be32 tmp = 0;
 int ret;

 switch (mask) {
 case 131:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  switch (chan->type) {
  case 129:
   mutex_lock(&data->lock);
   ret = mpl3115_request(data);
   if (ret < 0) {
    mutex_unlock(&data->lock);
    break;
   }
   ret = i2c_smbus_read_i2c_block_data(data->client,
    MPL3115_OUT_PRESS, 3, (u8 *) &tmp);
   mutex_unlock(&data->lock);
   if (ret < 0)
    break;
   *val = be32_to_cpu(tmp) >> 12;
   ret = IIO_VAL_INT;
   break;
  case 128:
   mutex_lock(&data->lock);
   ret = mpl3115_request(data);
   if (ret < 0) {
    mutex_unlock(&data->lock);
    break;
   }
   ret = i2c_smbus_read_i2c_block_data(data->client,
    MPL3115_OUT_TEMP, 2, (u8 *) &tmp);
   mutex_unlock(&data->lock);
   if (ret < 0)
    break;
   *val = sign_extend32(be32_to_cpu(tmp) >> 20, 11);
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
   break;
  }

  iio_device_release_direct_mode(indio_dev);
  return ret;

 case 130:
  switch (chan->type) {
  case 129:
   *val = 0;
   *val2 = 250;
   return IIO_VAL_INT_PLUS_MICRO;
  case 128:
   *val = 0;
   *val2 = 62500;
   return IIO_VAL_INT_PLUS_MICRO;
  default:
   return -EINVAL;
  }
 }
 return -EINVAL;
}
