
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx90614_data {int lock; int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; int channel2; } ;
typedef int s32 ;


 int EINVAL ;
 int EIO ;







 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int IIO_VAL_INT_PLUS_NANO ;
 int MLX90614_CONFIG ;
 int MLX90614_CONFIG_IIR_MASK ;
 int MLX90614_CONST_EMISSIVITY_RESOLUTION ;
 int MLX90614_CONST_OFFSET_DEC ;
 int MLX90614_CONST_OFFSET_REM ;
 int MLX90614_CONST_RAW_EMISSIVITY_MAX ;
 int MLX90614_CONST_SCALE ;
 int MLX90614_EMISSIVITY ;
 int MLX90614_TA ;
 int MLX90614_TOBJ1 ;
 int MLX90614_TOBJ2 ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct mlx90614_data* iio_priv (struct iio_dev*) ;
 int* mlx90614_iir_values ;
 int mlx90614_power_get (struct mlx90614_data*,int) ;
 int mlx90614_power_put (struct mlx90614_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlx90614_read_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *channel, int *val,
       int *val2, long mask)
{
 struct mlx90614_data *data = iio_priv(indio_dev);
 u8 cmd;
 s32 ret;

 switch (mask) {
 case 131:
  switch (channel->channel2) {
  case 129:
   cmd = MLX90614_TA;
   break;
  case 128:
   switch (channel->channel) {
   case 0:
    cmd = MLX90614_TOBJ1;
    break;
   case 1:
    cmd = MLX90614_TOBJ2;
    break;
   default:
    return -EINVAL;
   }
   break;
  default:
   return -EINVAL;
  }

  ret = mlx90614_power_get(data, 1);
  if (ret < 0)
   return ret;
  ret = i2c_smbus_read_word_data(data->client, cmd);
  mlx90614_power_put(data);

  if (ret < 0)
   return ret;


  if (ret & 0x8000)
   return -EIO;

  *val = ret;
  return IIO_VAL_INT;
 case 132:
  *val = MLX90614_CONST_OFFSET_DEC;
  *val2 = MLX90614_CONST_OFFSET_REM;
  return IIO_VAL_INT_PLUS_MICRO;
 case 130:
  *val = MLX90614_CONST_SCALE;
  return IIO_VAL_INT;
 case 134:
  mlx90614_power_get(data, 0);
  mutex_lock(&data->lock);
  ret = i2c_smbus_read_word_data(data->client,
            MLX90614_EMISSIVITY);
  mutex_unlock(&data->lock);
  mlx90614_power_put(data);

  if (ret < 0)
   return ret;

  if (ret == MLX90614_CONST_RAW_EMISSIVITY_MAX) {
   *val = 1;
   *val2 = 0;
  } else {
   *val = 0;
   *val2 = ret * MLX90614_CONST_EMISSIVITY_RESOLUTION;
  }
  return IIO_VAL_INT_PLUS_NANO;
 case 133:

  mlx90614_power_get(data, 0);
  mutex_lock(&data->lock);
  ret = i2c_smbus_read_word_data(data->client, MLX90614_CONFIG);
  mutex_unlock(&data->lock);
  mlx90614_power_put(data);

  if (ret < 0)
   return ret;

  *val = mlx90614_iir_values[ret & MLX90614_CONFIG_IIR_MASK] / 100;
  *val2 = (mlx90614_iir_values[ret & MLX90614_CONFIG_IIR_MASK] % 100) *
   10000;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
