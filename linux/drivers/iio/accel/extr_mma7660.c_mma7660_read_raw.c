
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mma7660_data {int lock; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int address; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_NANO ;
 struct mma7660_data* iio_priv (struct iio_dev*) ;
 int mma7660_nscale ;
 int mma7660_read_accel (struct mma7660_data*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sign_extend32 (int,int) ;

__attribute__((used)) static int mma7660_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 struct mma7660_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 129:
  mutex_lock(&data->lock);
  ret = mma7660_read_accel(data, chan->address);
  mutex_unlock(&data->lock);
  if (ret < 0)
   return ret;
  *val = sign_extend32(ret, 5);
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  *val2 = mma7660_nscale;
  return IIO_VAL_INT_PLUS_NANO;
 default:
  return -EINVAL;
 }

 return -EINVAL;
}
