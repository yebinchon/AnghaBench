
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int type; int channel; } ;


 int EINVAL ;

 int IIO_VAL_INT ;

 int axp20x_adc_offset_voltage (struct iio_dev*,int ,int*) ;

__attribute__((used)) static int axp20x_adc_offset(struct iio_dev *indio_dev,
        struct iio_chan_spec const *chan, int *val)
{
 switch (chan->type) {
 case 128:
  return axp20x_adc_offset_voltage(indio_dev, chan->channel, val);

 case 129:
  *val = -1447;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
