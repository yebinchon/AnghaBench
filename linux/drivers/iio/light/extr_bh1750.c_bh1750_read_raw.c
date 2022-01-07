
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct bh1750_data {int mtreg; int lock; struct bh1750_chip_info* chip_info; } ;
struct bh1750_chip_info {int mtreg_to_scale; int mtreg_to_usec; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int bh1750_read (struct bh1750_data*,int*) ;
 struct bh1750_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bh1750_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 int ret, tmp;
 struct bh1750_data *data = iio_priv(indio_dev);
 const struct bh1750_chip_info *chip_info = data->chip_info;

 switch (mask) {
 case 130:
  switch (chan->type) {
  case 128:
   mutex_lock(&data->lock);
   ret = bh1750_read(data, val);
   mutex_unlock(&data->lock);
   if (ret < 0)
    return ret;

   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 129:
  tmp = chip_info->mtreg_to_scale / data->mtreg;
  *val = tmp / 1000000;
  *val2 = tmp % 1000000;
  return IIO_VAL_INT_PLUS_MICRO;
 case 131:
  *val = 0;
  *val2 = chip_info->mtreg_to_usec * data->mtreg;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
