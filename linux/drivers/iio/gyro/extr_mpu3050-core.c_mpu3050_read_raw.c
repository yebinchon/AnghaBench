
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu3050 {int* calibration; size_t fullscale; int dev; int lock; int map; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; int type; } ;
typedef int raw_val ;
typedef int __be16 ;


 int EINVAL ;







 int IIO_VAL_FRACTIONAL ;
 int IIO_VAL_INT ;
 int MPU3050_AXIS_REGS (int ) ;
 int MPU3050_TEMP_H ;
 int U16_MAX ;
 int be16_to_cpu (int ) ;
 int dev_err (int ,char*) ;
 struct mpu3050* iio_priv (struct iio_dev*) ;
 int* mpu3050_fs_precision ;
 int mpu3050_get_freq (struct mpu3050*) ;
 int mpu3050_set_8khz_samplerate (struct mpu3050*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int mpu3050_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int *val, int *val2,
       long mask)
{
 struct mpu3050 *mpu3050 = iio_priv(indio_dev);
 int ret;
 __be16 raw_val;

 switch (mask) {
 case 132:
  switch (chan->type) {
  case 128:

   *val = 23000;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 133:
  switch (chan->type) {
  case 134:
   *val = mpu3050->calibration[chan->scan_index-1];
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 130:
  *val = mpu3050_get_freq(mpu3050);
  return IIO_VAL_INT;
 case 129:
  switch (chan->type) {
  case 128:

   *val = 1000;
   *val2 = 280;
   return IIO_VAL_FRACTIONAL;
  case 134:







   *val = mpu3050_fs_precision[mpu3050->fullscale] * 2;
   *val2 = U16_MAX;
   return IIO_VAL_FRACTIONAL;
  default:
   return -EINVAL;
  }
 case 131:

  pm_runtime_get_sync(mpu3050->dev);
  mutex_lock(&mpu3050->lock);

  ret = mpu3050_set_8khz_samplerate(mpu3050);
  if (ret)
   goto out_read_raw_unlock;

  switch (chan->type) {
  case 128:
   ret = regmap_bulk_read(mpu3050->map, MPU3050_TEMP_H,
            &raw_val, sizeof(raw_val));
   if (ret) {
    dev_err(mpu3050->dev,
     "error reading temperature\n");
    goto out_read_raw_unlock;
   }

   *val = be16_to_cpu(raw_val);
   ret = IIO_VAL_INT;

   goto out_read_raw_unlock;
  case 134:
   ret = regmap_bulk_read(mpu3050->map,
           MPU3050_AXIS_REGS(chan->scan_index-1),
           &raw_val,
           sizeof(raw_val));
   if (ret) {
    dev_err(mpu3050->dev,
     "error reading axis data\n");
    goto out_read_raw_unlock;
   }

   *val = be16_to_cpu(raw_val);
   ret = IIO_VAL_INT;

   goto out_read_raw_unlock;
  default:
   ret = -EINVAL;
   goto out_read_raw_unlock;
  }
 default:
  break;
 }

 return -EINVAL;

out_read_raw_unlock:
 mutex_unlock(&mpu3050->lock);
 pm_runtime_mark_last_busy(mpu3050->dev);
 pm_runtime_put_autosuspend(mpu3050->dev);

 return ret;
}
