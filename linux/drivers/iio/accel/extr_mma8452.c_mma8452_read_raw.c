
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mma8452_data {int data_cfg; int client; TYPE_2__* chip_info; int lock; } ;
struct iio_dev {int dummy; } ;
struct TYPE_3__ {int shift; int realbits; } ;
struct iio_chan_spec {size_t scan_index; TYPE_1__ scan_type; } ;
typedef int __be16 ;
struct TYPE_4__ {int** mma_scales; } ;


 int EINVAL ;






 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int MMA8452_DATA_CFG_FS_MASK ;
 int MMA8452_DATA_CFG_HPF_MASK ;
 size_t MMA8452_OFF_X ;
 int be16_to_cpu (int ) ;
 int i2c_smbus_read_byte_data (int ,size_t) ;
 int iio_device_claim_direct_mode (struct iio_dev*) ;
 int iio_device_release_direct_mode (struct iio_dev*) ;
 struct mma8452_data* iio_priv (struct iio_dev*) ;
 int mma8452_get_odr_index (struct mma8452_data*) ;
 int mma8452_get_power_mode (struct mma8452_data*) ;
 int** mma8452_os_ratio ;
 int mma8452_read (struct mma8452_data*,int *) ;
 int mma8452_read_hp_filter (struct mma8452_data*,int*,int*) ;
 int** mma8452_samp_freq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int mma8452_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2, long mask)
{
 struct mma8452_data *data = iio_priv(indio_dev);
 __be16 buffer[3];
 int i, ret;

 switch (mask) {
 case 130:
  ret = iio_device_claim_direct_mode(indio_dev);
  if (ret)
   return ret;

  mutex_lock(&data->lock);
  ret = mma8452_read(data, buffer);
  mutex_unlock(&data->lock);
  iio_device_release_direct_mode(indio_dev);
  if (ret < 0)
   return ret;

  *val = sign_extend32(be16_to_cpu(
   buffer[chan->scan_index]) >> chan->scan_type.shift,
   chan->scan_type.realbits - 1);

  return IIO_VAL_INT;
 case 128:
  i = data->data_cfg & MMA8452_DATA_CFG_FS_MASK;
  *val = data->chip_info->mma_scales[i][0];
  *val2 = data->chip_info->mma_scales[i][1];

  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  i = mma8452_get_odr_index(data);
  *val = mma8452_samp_freq[i][0];
  *val2 = mma8452_samp_freq[i][1];

  return IIO_VAL_INT_PLUS_MICRO;
 case 133:
  ret = i2c_smbus_read_byte_data(data->client,
            MMA8452_OFF_X +
            chan->scan_index);
  if (ret < 0)
   return ret;

  *val = sign_extend32(ret, 7);

  return IIO_VAL_INT;
 case 132:
  if (data->data_cfg & MMA8452_DATA_CFG_HPF_MASK) {
   ret = mma8452_read_hp_filter(data, val, val2);
   if (ret < 0)
    return ret;
  } else {
   *val = 0;
   *val2 = 0;
  }

  return IIO_VAL_INT_PLUS_MICRO;
 case 131:
  ret = mma8452_get_power_mode(data);
  if (ret < 0)
   return ret;

  i = mma8452_get_odr_index(data);

  *val = mma8452_os_ratio[ret][i];
  return IIO_VAL_INT;
 }

 return -EINVAL;
}
