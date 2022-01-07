
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adc5_chip {int complete; int poll_eoc; } ;
struct adc5_channel_prop {int hw_settle_time; int channel; int avg_samples; } ;
typedef int buf ;


 int ADC5_USR_CONV_REQ_REQ ;
 int ADC5_USR_DIG_PARAM ;
 int ADC5_USR_EN_CTL1_ADC_EN ;
 scalar_t__ ADC5_USR_FAST_AVG_CTL_SAMPLES_MASK ;
 scalar_t__ ADC5_USR_HW_SETTLE_DELAY_MASK ;
 int adc5_read (struct adc5_chip*,int ,int *,int) ;
 int adc5_update_dig_param (struct adc5_chip*,struct adc5_channel_prop*,int *) ;
 int adc5_write (struct adc5_chip*,int ,int *,int) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int adc5_configure(struct adc5_chip *adc,
   struct adc5_channel_prop *prop)
{
 int ret;
 u8 buf[6];


 ret = adc5_read(adc, ADC5_USR_DIG_PARAM, buf, sizeof(buf));
 if (ret < 0)
  return ret;


 adc5_update_dig_param(adc, prop, &buf[0]);


 buf[1] &= (u8) ~ADC5_USR_FAST_AVG_CTL_SAMPLES_MASK;
 buf[1] |= prop->avg_samples;


 buf[2] = prop->channel;


 buf[3] &= (u8) ~ADC5_USR_HW_SETTLE_DELAY_MASK;
 buf[3] |= prop->hw_settle_time;


 buf[4] |= ADC5_USR_EN_CTL1_ADC_EN;


 buf[5] |= ADC5_USR_CONV_REQ_REQ;

 if (!adc->poll_eoc)
  reinit_completion(&adc->complete);

 return adc5_write(adc, ADC5_USR_DIG_PARAM, buf, sizeof(buf));
}
