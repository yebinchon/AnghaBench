
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx90614_data {int lock; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int s32 ;


 int EINVAL ;


 int MLX90614_CONST_EMISSIVITY_RESOLUTION ;
 int MLX90614_CONST_RAW_EMISSIVITY_MAX ;
 int MLX90614_EMISSIVITY ;
 struct mlx90614_data* iio_priv (struct iio_dev*) ;
 int mlx90614_iir_search (int ,int) ;
 int mlx90614_power_get (struct mlx90614_data*,int) ;
 int mlx90614_power_put (struct mlx90614_data*) ;
 int mlx90614_write_word (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlx90614_write_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *channel, int val,
        int val2, long mask)
{
 struct mlx90614_data *data = iio_priv(indio_dev);
 s32 ret;

 switch (mask) {
 case 129:
  if (val < 0 || val2 < 0 || val > 1 || (val == 1 && val2 != 0))
   return -EINVAL;
  val = val * MLX90614_CONST_RAW_EMISSIVITY_MAX +
   val2 / MLX90614_CONST_EMISSIVITY_RESOLUTION;

  mlx90614_power_get(data, 0);
  mutex_lock(&data->lock);
  ret = mlx90614_write_word(data->client, MLX90614_EMISSIVITY,
       val);
  mutex_unlock(&data->lock);
  mlx90614_power_put(data);

  return ret;
 case 128:
  if (val < 0 || val2 < 0)
   return -EINVAL;

  mlx90614_power_get(data, 0);
  mutex_lock(&data->lock);
  ret = mlx90614_iir_search(data->client,
       val * 100 + val2 / 10000);
  mutex_unlock(&data->lock);
  mlx90614_power_put(data);

  return ret;
 default:
  return -EINVAL;
 }
}
