
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct vadc_priv {struct vadc_channel_prop* chan_props; int * graph; } ;
struct vadc_channel_prop {size_t calibration; size_t prescale; int scale_fn_type; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {size_t address; } ;


 int EINVAL ;


 int IIO_VAL_INT ;
 size_t VADC_CALIB_ABSOLUTE ;
 struct vadc_priv* iio_priv (struct iio_dev*) ;
 int qcom_vadc_scale (int ,int *,int *,int,scalar_t__,int*) ;
 int vadc_do_conversion (struct vadc_priv*,struct vadc_channel_prop*,scalar_t__*) ;
 int * vadc_prescale_ratios ;

__attribute__((used)) static int vadc_read_raw(struct iio_dev *indio_dev,
    struct iio_chan_spec const *chan, int *val, int *val2,
    long mask)
{
 struct vadc_priv *vadc = iio_priv(indio_dev);
 struct vadc_channel_prop *prop;
 u16 adc_code;
 int ret;

 switch (mask) {
 case 129:
  prop = &vadc->chan_props[chan->address];
  ret = vadc_do_conversion(vadc, prop, &adc_code);
  if (ret)
   break;

  ret = qcom_vadc_scale(prop->scale_fn_type,
    &vadc->graph[prop->calibration],
    &vadc_prescale_ratios[prop->prescale],
    (prop->calibration == VADC_CALIB_ABSOLUTE),
    adc_code, val);
  if (ret)
   break;

  return IIO_VAL_INT;
 case 128:
  prop = &vadc->chan_props[chan->address];
  ret = vadc_do_conversion(vadc, prop, &adc_code);
  if (ret)
   break;

  *val = (int)adc_code;
  return IIO_VAL_INT;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
