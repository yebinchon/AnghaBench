
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vcnl4000_data {int al_scale; TYPE_1__* chip_spec; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int const type; } ;
struct TYPE_2__ {int (* measure_light ) (struct vcnl4000_data*,int*) ;int (* measure_proximity ) (struct vcnl4000_data*,int*) ;} ;


 int EINVAL ;




 int IIO_VAL_INT ;
 int IIO_VAL_INT_PLUS_MICRO ;
 struct vcnl4000_data* iio_priv (struct iio_dev*) ;
 int stub1 (struct vcnl4000_data*,int*) ;
 int stub2 (struct vcnl4000_data*,int*) ;

__attribute__((used)) static int vcnl4000_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int *val, int *val2, long mask)
{
 int ret;
 struct vcnl4000_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 131:
  switch (chan->type) {
  case 129:
   ret = data->chip_spec->measure_light(data, val);
   if (ret < 0)
    return ret;
   return IIO_VAL_INT;
  case 128:
   ret = data->chip_spec->measure_proximity(data, val);
   if (ret < 0)
    return ret;
   return IIO_VAL_INT;
  default:
   return -EINVAL;
  }
 case 130:
  if (chan->type != 129)
   return -EINVAL;

  *val = 0;
  *val2 = data->al_scale;
  return IIO_VAL_INT_PLUS_MICRO;
 default:
  return -EINVAL;
 }
}
