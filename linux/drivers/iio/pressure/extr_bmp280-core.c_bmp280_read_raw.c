
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct bmp280_data {int oversampling_humid; int oversampling_press; int oversampling_temp; int dev; int lock; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int (* read_humid ) (struct bmp280_data*,int*,int*) ;int (* read_press ) (struct bmp280_data*,int*,int*) ;int (* read_temp ) (struct bmp280_data*,int*) ;} ;


 int EINVAL ;





 int IIO_VAL_INT ;
 struct bmp280_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int stub1 (struct bmp280_data*,int*,int*) ;
 int stub2 (struct bmp280_data*,int*,int*) ;
 int stub3 (struct bmp280_data*,int*) ;

__attribute__((used)) static int bmp280_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 int ret;
 struct bmp280_data *data = iio_priv(indio_dev);

 pm_runtime_get_sync(data->dev);
 mutex_lock(&data->lock);

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 130:
   ret = data->chip_info->read_humid(data, val, val2);
   break;
  case 129:
   ret = data->chip_info->read_press(data, val, val2);
   break;
  case 128:
   ret = data->chip_info->read_temp(data, val);
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;
 case 132:
  switch (chan->type) {
  case 130:
   *val = 1 << data->oversampling_humid;
   ret = IIO_VAL_INT;
   break;
  case 129:
   *val = 1 << data->oversampling_press;
   ret = IIO_VAL_INT;
   break;
  case 128:
   *val = 1 << data->oversampling_temp;
   ret = IIO_VAL_INT;
   break;
  default:
   ret = -EINVAL;
   break;
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }

 mutex_unlock(&data->lock);
 pm_runtime_mark_last_busy(data->dev);
 pm_runtime_put_autosuspend(data->dev);

 return ret;
}
