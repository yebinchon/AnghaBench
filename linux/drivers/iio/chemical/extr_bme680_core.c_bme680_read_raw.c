
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct bme680_data {int oversampling_temp; int oversampling_press; int oversampling_humid; } ;


 int EINVAL ;






 int IIO_VAL_INT ;
 int bme680_read_gas (struct bme680_data*,int*) ;
 int bme680_read_humid (struct bme680_data*,int*,int*) ;
 int bme680_read_press (struct bme680_data*,int*,int*) ;
 int bme680_read_temp (struct bme680_data*,int*) ;
 struct bme680_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bme680_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct bme680_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 132:
  switch (chan->type) {
  case 128:
   return bme680_read_temp(data, val);
  case 130:
   return bme680_read_press(data, val, val2);
  case 131:
   return bme680_read_humid(data, val, val2);
  case 129:
   return bme680_read_gas(data, val);
  default:
   return -EINVAL;
  }
 case 133:
  switch (chan->type) {
  case 128:
   *val = data->oversampling_temp;
   return IIO_VAL_INT;
  case 130:
   *val = data->oversampling_press;
   return IIO_VAL_INT;
  case 131:
   *val = data->oversampling_humid;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
