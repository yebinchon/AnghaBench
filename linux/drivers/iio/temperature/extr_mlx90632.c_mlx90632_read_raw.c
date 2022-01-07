
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx90632_data {int emissivity; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel2; } ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct mlx90632_data* iio_priv (struct iio_dev*) ;
 int mlx90632_calc_ambient_dsp105 (struct mlx90632_data*,int*) ;
 int mlx90632_calc_object_dsp105 (struct mlx90632_data*,int*) ;

__attribute__((used)) static int mlx90632_read_raw(struct iio_dev *indio_dev,
        struct iio_chan_spec const *channel, int *val,
        int *val2, long mask)
{
 struct mlx90632_data *data = iio_priv(indio_dev);
 int ret;

 switch (mask) {
 case 130:
  switch (channel->channel2) {
  case 129:
   ret = mlx90632_calc_ambient_dsp105(data, val);
   if (ret < 0)
    return ret;
   return IIO_VAL_INT;
  case 128:
   ret = mlx90632_calc_object_dsp105(data, val);
   if (ret < 0)
    return ret;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 131:
  if (data->emissivity == 1000) {
   *val = 1;
   *val2 = 0;
  } else {
   *val = 0;
   *val2 = data->emissivity * 1000;
  }
  return IIO_VAL_INT_PLUS_MICRO;

 default:
  return -EINVAL;
 }
}
