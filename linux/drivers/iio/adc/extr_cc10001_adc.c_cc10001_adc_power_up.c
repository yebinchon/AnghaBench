
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc10001_adc_device {int start_delay_ns; } ;


 int CC10001_ADC_POWER_DOWN ;
 int cc10001_adc_write_reg (struct cc10001_adc_device*,int ,int ) ;
 int ndelay (int ) ;

__attribute__((used)) static void cc10001_adc_power_up(struct cc10001_adc_device *adc_dev)
{
 cc10001_adc_write_reg(adc_dev, CC10001_ADC_POWER_DOWN, 0);
 ndelay(adc_dev->start_delay_ns);
}
