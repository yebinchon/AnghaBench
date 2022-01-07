
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ingenic_adc {int low_vref_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;


 int EINVAL ;


 int JZ_ADC_BATTERY_LOW_VREF ;
 int JZ_ADC_REG_CFG_BAT_MD ;
 struct ingenic_adc* iio_priv (struct iio_dev*) ;
 int ingenic_adc_set_config (struct ingenic_adc*,int ,int ) ;

__attribute__((used)) static int ingenic_adc_write_raw(struct iio_dev *iio_dev,
     struct iio_chan_spec const *chan,
     int val,
     int val2,
     long m)
{
 struct ingenic_adc *adc = iio_priv(iio_dev);

 switch (m) {
 case 129:
  switch (chan->channel) {
  case 128:
   if (val > JZ_ADC_BATTERY_LOW_VREF) {
    ingenic_adc_set_config(adc,
             JZ_ADC_REG_CFG_BAT_MD,
             0);
    adc->low_vref_mode = 0;
   } else {
    ingenic_adc_set_config(adc,
             JZ_ADC_REG_CFG_BAT_MD,
             JZ_ADC_REG_CFG_BAT_MD);
    adc->low_vref_mode = 1;
   }
   return 0;
  default:
   return -EINVAL;
  }
 default:
  return -EINVAL;
 }
}
