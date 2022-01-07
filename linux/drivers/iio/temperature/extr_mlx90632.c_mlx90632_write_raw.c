
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx90632_data {int emissivity; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 int EINVAL ;

 struct mlx90632_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int mlx90632_write_raw(struct iio_dev *indio_dev,
         struct iio_chan_spec const *channel, int val,
         int val2, long mask)
{
 struct mlx90632_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:

  if (val < 0 || val2 < 0 || val > 1 ||
      (val == 1 && val2 != 0))
   return -EINVAL;
  data->emissivity = val * 1000 + val2 / 1000;
  return 0;
 default:
  return -EINVAL;
 }
}
