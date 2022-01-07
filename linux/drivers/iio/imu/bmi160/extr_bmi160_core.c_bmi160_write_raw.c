
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; } ;
struct bmi160_data {int dummy; } ;


 int EINVAL ;


 int bmi160_set_odr (struct bmi160_data*,int ,int,int) ;
 int bmi160_set_scale (struct bmi160_data*,int ,int) ;
 int bmi160_to_sensor (int ) ;
 struct bmi160_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int bmi160_write_raw(struct iio_dev *indio_dev,
       struct iio_chan_spec const *chan,
       int val, int val2, long mask)
{
 struct bmi160_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  return bmi160_set_scale(data,
     bmi160_to_sensor(chan->type), val2);
  break;
 case 129:
  return bmi160_set_odr(data, bmi160_to_sensor(chan->type),
          val, val2);
 default:
  return -EINVAL;
 }

 return 0;
}
