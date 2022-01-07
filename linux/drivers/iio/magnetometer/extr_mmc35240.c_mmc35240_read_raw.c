
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mmc35240_data {int mutex; int regmap; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;
typedef int __le16 ;
struct TYPE_3__ {int val; int val2; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 unsigned int MMC35240_CTRL1_BW_MASK ;
 unsigned int MMC35240_CTRL1_BW_SHIFT ;
 int MMC35240_REG_CTRL1 ;
 struct mmc35240_data* iio_priv (struct iio_dev*) ;
 int mmc35240_raw_to_mgauss (struct mmc35240_data*,int ,int *,int*) ;
 int mmc35240_read_measurement (struct mmc35240_data*,int *) ;
 TYPE_1__* mmc35240_samp_freq ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int mmc35240_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val,
        int *val2, long mask)
{
 struct mmc35240_data *data = iio_priv(indio_dev);
 int ret, i;
 unsigned int reg;
 __le16 buf[3];

 switch (mask) {
 case 130:
  mutex_lock(&data->mutex);
  ret = mmc35240_read_measurement(data, buf);
  mutex_unlock(&data->mutex);
  if (ret < 0)
   return ret;
  ret = mmc35240_raw_to_mgauss(data, chan->address, buf, val);
  if (ret < 0)
   return ret;
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = 1000;
  return IIO_VAL_INT_PLUS_MICRO;
 case 129:
  mutex_lock(&data->mutex);
  ret = regmap_read(data->regmap, MMC35240_REG_CTRL1, &reg);
  mutex_unlock(&data->mutex);
  if (ret < 0)
   return ret;

  i = (reg & MMC35240_CTRL1_BW_MASK) >> MMC35240_CTRL1_BW_SHIFT;
  if (i < 0 || i >= ARRAY_SIZE(mmc35240_samp_freq))
   return -EINVAL;

  *val = mmc35240_samp_freq[i].val;
  *val2 = mmc35240_samp_freq[i].val2;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
