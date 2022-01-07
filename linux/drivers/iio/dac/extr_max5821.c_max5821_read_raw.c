
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max5821_data {int vref_mv; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 struct max5821_data* iio_priv (struct iio_dev*) ;
 int max5821_get_value (struct iio_dev*,int*,int ) ;

__attribute__((used)) static int max5821_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val, int *val2, long mask)
{
 struct max5821_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 129:
  return max5821_get_value(indio_dev, val, chan->channel);
 case 128:
  *val = data->vref_mv;
  *val2 = 10;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
