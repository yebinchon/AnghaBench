
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc10001_adc_device {int dummy; } ;


 int CC10001_ADC_POWER_DOWN ;
 int CC10001_ADC_POWER_DOWN_SET ;
 int cc10001_adc_write_reg (struct cc10001_adc_device*,int ,int ) ;

__attribute__((used)) static void cc10001_adc_power_down(struct cc10001_adc_device *adc_dev)
{
 cc10001_adc_write_reg(adc_dev, CC10001_ADC_POWER_DOWN,
         CC10001_ADC_POWER_DOWN_SET);
}
