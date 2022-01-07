
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;
struct adc5_chip {int data; struct adc5_channel_prop* chan_props; } ;
struct adc5_channel_prop {size_t prescale; int scale_fn_type; } ;


 int EINVAL ;

 int IIO_VAL_INT ;
 int adc5_do_conversion (struct adc5_chip*,struct adc5_channel_prop*,struct iio_chan_spec const*,int *,int *) ;
 int * adc5_prescale_ratios ;
 struct adc5_chip* iio_priv (struct iio_dev*) ;
 int qcom_adc5_hw_scale (int ,int *,int ,int ,int*) ;

__attribute__((used)) static int adc5_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan, int *val, int *val2,
    long mask)
{
 struct adc5_chip *adc = iio_priv(indio_dev);
 struct adc5_channel_prop *prop;
 u16 adc_code_volt, adc_code_cur;
 int ret;

 prop = &adc->chan_props[chan->address];

 switch (mask) {
 case 128:
  ret = adc5_do_conversion(adc, prop, chan,
    &adc_code_volt, &adc_code_cur);
  if (ret)
   return ret;

  ret = qcom_adc5_hw_scale(prop->scale_fn_type,
   &adc5_prescale_ratios[prop->prescale],
   adc->data,
   adc_code_volt, val);
  if (ret)
   return ret;

  return IIO_VAL_INT;
 default:
  return -EINVAL;
 }

 return 0;
}
