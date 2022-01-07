
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct us5182d_data {int rising_en; int falling_en; int lock; void* power_mode; int default_continuous; int px_low_th; int px_high_th; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int EINVAL ;


 void* US5182D_CONTINUOUS ;
 void* US5182D_ONESHOT ;
 int US5182D_PXH_TH_DISABLE ;
 int US5182D_PXL_TH_DISABLE ;
 struct us5182d_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int us5182d_px_enable (struct us5182d_data*) ;
 int us5182d_set_power_state (struct us5182d_data*,int) ;
 int us5182d_setup_prox (struct iio_dev*,int,int ) ;

__attribute__((used)) static int us5182d_write_event_config(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, enum iio_event_type type,
 enum iio_event_direction dir, int state)
{
 struct us5182d_data *data = iio_priv(indio_dev);
 int ret;
 u16 new_th;

 mutex_lock(&data->lock);

 switch (dir) {
 case 128:
  if (data->rising_en == state) {
   mutex_unlock(&data->lock);
   return 0;
  }
  new_th = US5182D_PXH_TH_DISABLE;
  if (state) {
   data->power_mode = US5182D_CONTINUOUS;
   ret = us5182d_set_power_state(data, 1);
   if (ret < 0)
    goto err;
   ret = us5182d_px_enable(data);
   if (ret < 0)
    goto err_poweroff;
   new_th = data->px_high_th;
  }
  ret = us5182d_setup_prox(indio_dev, dir, new_th);
  if (ret < 0)
   goto err_poweroff;
  data->rising_en = state;
  break;
 case 129:
  if (data->falling_en == state) {
   mutex_unlock(&data->lock);
   return 0;
  }
  new_th = US5182D_PXL_TH_DISABLE;
  if (state) {
   data->power_mode = US5182D_CONTINUOUS;
   ret = us5182d_set_power_state(data, 1);
   if (ret < 0)
    goto err;
   ret = us5182d_px_enable(data);
   if (ret < 0)
    goto err_poweroff;
   new_th = data->px_low_th;
  }
  ret = us5182d_setup_prox(indio_dev, dir, new_th);
  if (ret < 0)
   goto err_poweroff;
  data->falling_en = state;
  break;
 default:
  ret = -EINVAL;
  goto err;
 }

 if (!state) {
  ret = us5182d_set_power_state(data, 0);
  if (ret < 0)
   goto err;
 }

 if (!data->falling_en && !data->rising_en && !data->default_continuous)
  data->power_mode = US5182D_ONESHOT;

 mutex_unlock(&data->lock);
 return 0;

err_poweroff:
 if (state)
  us5182d_set_power_state(data, 0);
err:
 mutex_unlock(&data->lock);
 return ret;
}
