
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us5182d_data {scalar_t__ power_mode; int lock; } ;
struct iio_chan_spec {scalar_t__ type; } ;


 scalar_t__ IIO_LIGHT ;
 scalar_t__ US5182D_ONESHOT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int us5182d_get_als (struct us5182d_data*) ;
 int us5182d_get_px (struct us5182d_data*) ;
 int us5182d_oneshot_en (struct us5182d_data*) ;
 int us5182d_set_power_state (struct us5182d_data*,int) ;

__attribute__((used)) static int us5182d_read_value(struct us5182d_data *data,
         struct iio_chan_spec const *chan)
{
 int ret, value;

 mutex_lock(&data->lock);

 if (data->power_mode == US5182D_ONESHOT) {
  ret = us5182d_oneshot_en(data);
  if (ret < 0)
   goto out_err;
 }

 ret = us5182d_set_power_state(data, 1);
 if (ret < 0)
  goto out_err;

 if (chan->type == IIO_LIGHT)
  ret = us5182d_get_als(data);
 else
  ret = us5182d_get_px(data);
 if (ret < 0)
  goto out_poweroff;

 value = ret;

 ret = us5182d_set_power_state(data, 0);
 if (ret < 0)
  goto out_err;

 mutex_unlock(&data->lock);
 return value;

out_poweroff:
 us5182d_set_power_state(data, 0);
out_err:
 mutex_unlock(&data->lock);
 return ret;
}
