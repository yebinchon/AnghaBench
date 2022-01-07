
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max517_data {int* vref_mv; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 int EINVAL ;

 int IIO_VAL_FRACTIONAL_LOG2 ;
 struct max517_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int max517_read_raw(struct iio_dev *indio_dev,
      struct iio_chan_spec const *chan,
      int *val,
      int *val2,
      long m)
{
 struct max517_data *data = iio_priv(indio_dev);

 switch (m) {
 case 128:

  *val = data->vref_mv[chan->channel];
  *val2 = 8;
  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  break;
 }
 return -EINVAL;
}
