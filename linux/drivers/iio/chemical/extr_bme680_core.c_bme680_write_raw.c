
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct bme680_data {int oversampling_temp; int oversampling_press; int oversampling_humid; } ;


 int EINVAL ;




 int bme680_chip_config (struct bme680_data*) ;
 int bme680_is_valid_oversampling (int) ;
 struct bme680_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bme680_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct bme680_data *data = iio_priv(indio_dev);

 if (val2 != 0)
  return -EINVAL;

 switch (mask) {
 case 131:
 {
  if (!bme680_is_valid_oversampling(val))
   return -EINVAL;

  switch (chan->type) {
  case 128:
   data->oversampling_temp = val;
   break;
  case 129:
   data->oversampling_press = val;
   break;
  case 130:
   data->oversampling_humid = val;
   break;
  default:
   return -EINVAL;
  }

  return bme680_chip_config(data);
 }
 default:
  return -EINVAL;
 }
}
