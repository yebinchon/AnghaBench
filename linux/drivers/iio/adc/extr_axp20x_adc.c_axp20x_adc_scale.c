
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_chan_spec {int type; int channel; } ;


 int EINVAL ;


 int IIO_VAL_INT ;

 int axp20x_adc_scale_current (int ,int*,int*) ;
 int axp20x_adc_scale_voltage (int ,int*,int*) ;

__attribute__((used)) static int axp20x_adc_scale(struct iio_chan_spec const *chan, int *val,
       int *val2)
{
 switch (chan->type) {
 case 128:
  return axp20x_adc_scale_voltage(chan->channel, val, val2);

 case 130:
  return axp20x_adc_scale_current(chan->channel, val, val2);

 case 129:
  *val = 100;
  return IIO_VAL_INT;

 default:
  return -EINVAL;
 }
}
