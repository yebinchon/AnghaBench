
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_adc_data {int* channel_scale; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t channel; } ;


 int EINVAL ;

 int IIO_VAL_INT ;
 struct sc27xx_adc_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int sc27xx_adc_write_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan,
    int val, int val2, long mask)
{
 struct sc27xx_adc_data *data = iio_priv(indio_dev);

 switch (mask) {
 case 128:
  data->channel_scale[chan->channel] = val;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
