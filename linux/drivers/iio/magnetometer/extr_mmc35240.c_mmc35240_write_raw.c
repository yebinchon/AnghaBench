
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc35240_data {int mutex; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 int MMC35240_CTRL1_BW_MASK ;
 int MMC35240_CTRL1_BW_SHIFT ;
 int MMC35240_REG_CTRL1 ;
 struct mmc35240_data* iio_priv (struct iio_dev*) ;
 int mmc35240_get_samp_freq_index (struct mmc35240_data*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static int mmc35240_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *chan, int val,
         int val2, long mask)
{
 struct mmc35240_data *data = iio_priv(indio_dev);
 int i, ret;

 switch (mask) {
 case 128:
  i = mmc35240_get_samp_freq_index(data, val, val2);
  if (i < 0)
   return -EINVAL;
  mutex_lock(&data->mutex);
  ret = regmap_update_bits(data->regmap, MMC35240_REG_CTRL1,
      MMC35240_CTRL1_BW_MASK,
      i << MMC35240_CTRL1_BW_SHIFT);
  mutex_unlock(&data->mutex);
  return ret;
 default:
  return -EINVAL;
 }
}
