
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel2; } ;
struct bmi160_data {int dummy; } ;


 int EINVAL ;



 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 int bmi160_get_data (struct bmi160_data*,int ,int ,int*) ;
 int bmi160_get_odr (struct bmi160_data*,int ,int*,int*) ;
 int bmi160_get_scale (struct bmi160_data*,int ,int*) ;
 int bmi160_to_sensor (int ) ;
 struct bmi160_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bmi160_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 int ret;
 struct bmi160_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 130:
  ret = bmi160_get_data(data, chan->type, chan->channel2, val);
  if (ret)
   return ret;
  return IIO_VAL_INT;
 case 128:
  *val = 0;
  ret = bmi160_get_scale(data,
           bmi160_to_sensor(chan->type), val2);
  return ret ? ret : IIO_VAL_INT_PLUS_MICRO;
 case 129:
  ret = bmi160_get_odr(data, bmi160_to_sensor(chan->type),
         val, val2);
  return ret ? ret : IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }

 return 0;
}
