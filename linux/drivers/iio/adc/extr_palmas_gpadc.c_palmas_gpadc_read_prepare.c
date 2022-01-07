
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_gpadc {int dummy; } ;


 int palmas_gpadc_enable (struct palmas_gpadc*,int,int) ;
 int palmas_gpadc_start_mask_interrupt (struct palmas_gpadc*,int ) ;

__attribute__((used)) static int palmas_gpadc_read_prepare(struct palmas_gpadc *adc, int adc_chan)
{
 int ret;

 ret = palmas_gpadc_enable(adc, adc_chan, 1);
 if (ret < 0)
  return ret;

 return palmas_gpadc_start_mask_interrupt(adc, 0);
}
