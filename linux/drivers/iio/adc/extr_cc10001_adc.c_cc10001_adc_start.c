
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cc10001_adc_device {int dummy; } ;


 unsigned int CC10001_ADC_CH_MASK ;
 int CC10001_ADC_CONFIG ;
 unsigned int CC10001_ADC_MODE_SINGLE_CONV ;
 int CC10001_ADC_START_CONV ;
 int cc10001_adc_read_reg (struct cc10001_adc_device*,int ) ;
 int cc10001_adc_write_reg (struct cc10001_adc_device*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void cc10001_adc_start(struct cc10001_adc_device *adc_dev,
         unsigned int channel)
{
 u32 val;


 val = (channel & CC10001_ADC_CH_MASK) | CC10001_ADC_MODE_SINGLE_CONV;
 cc10001_adc_write_reg(adc_dev, CC10001_ADC_CONFIG, val);

 udelay(1);
 val = cc10001_adc_read_reg(adc_dev, CC10001_ADC_CONFIG);
 val = val | CC10001_ADC_START_CONV;
 cc10001_adc_write_reg(adc_dev, CC10001_ADC_CONFIG, val);
}
