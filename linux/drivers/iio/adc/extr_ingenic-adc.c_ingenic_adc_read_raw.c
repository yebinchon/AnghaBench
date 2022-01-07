
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ingenic_adc {TYPE_1__* soc_data; int low_vref_mode; int clk; scalar_t__ base; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct TYPE_2__ {int battery_high_vref; int battery_high_vref_bits; } ;


 int EINVAL ;


 int IIO_VAL_FRACTIONAL_LOG2 ;
 int IIO_VAL_INT ;


 int JZ_ADC_AUX_VREF ;
 int JZ_ADC_AUX_VREF_BITS ;
 int JZ_ADC_BATTERY_LOW_VREF ;
 int JZ_ADC_BATTERY_LOW_VREF_BITS ;
 scalar_t__ JZ_ADC_REG_ADBDAT ;
 scalar_t__ JZ_ADC_REG_ADSDAT ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct ingenic_adc* iio_priv (struct iio_dev*) ;
 int ingenic_adc_capture (struct ingenic_adc*,int ) ;
 int readw (scalar_t__) ;

__attribute__((used)) static int ingenic_adc_read_raw(struct iio_dev *iio_dev,
    struct iio_chan_spec const *chan,
    int *val,
    int *val2,
    long m)
{
 struct ingenic_adc *adc = iio_priv(iio_dev);
 int ret;

 switch (m) {
 case 131:
  clk_enable(adc->clk);
  ret = ingenic_adc_capture(adc, chan->channel);
  if (ret) {
   clk_disable(adc->clk);
   return ret;
  }

  switch (chan->channel) {
  case 129:
   *val = readw(adc->base + JZ_ADC_REG_ADSDAT);
   break;
  case 128:
   *val = readw(adc->base + JZ_ADC_REG_ADBDAT);
   break;
  }

  clk_disable(adc->clk);

  return IIO_VAL_INT;
 case 130:
  switch (chan->channel) {
  case 129:
   *val = JZ_ADC_AUX_VREF;
   *val2 = JZ_ADC_AUX_VREF_BITS;
   break;
  case 128:
   if (adc->low_vref_mode) {
    *val = JZ_ADC_BATTERY_LOW_VREF;
    *val2 = JZ_ADC_BATTERY_LOW_VREF_BITS;
   } else {
    *val = adc->soc_data->battery_high_vref;
    *val2 = adc->soc_data->battery_high_vref_bits;
   }
   break;
  }

  return IIO_VAL_FRACTIONAL_LOG2;
 default:
  return -EINVAL;
 }
}
