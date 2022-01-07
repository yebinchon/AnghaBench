
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct bmp280_data {int dev; int lock; } ;


 int EINVAL ;




 int bmp280_write_oversampling_ratio_humid (struct bmp280_data*,int) ;
 int bmp280_write_oversampling_ratio_press (struct bmp280_data*,int) ;
 int bmp280_write_oversampling_ratio_temp (struct bmp280_data*,int) ;
 struct bmp280_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

__attribute__((used)) static int bmp280_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 int ret = 0;
 struct bmp280_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 131:
  pm_runtime_get_sync(data->dev);
  mutex_lock(&data->lock);
  switch (chan->type) {
  case 130:
   ret = bmp280_write_oversampling_ratio_humid(data, val);
   break;
  case 129:
   ret = bmp280_write_oversampling_ratio_press(data, val);
   break;
  case 128:
   ret = bmp280_write_oversampling_ratio_temp(data, val);
   break;
  default:
   ret = -EINVAL;
   break;
  }
  mutex_unlock(&data->lock);
  pm_runtime_mark_last_busy(data->dev);
  pm_runtime_put_autosuspend(data->dev);
  break;
 default:
  return -EINVAL;
 }

 return ret;
}
