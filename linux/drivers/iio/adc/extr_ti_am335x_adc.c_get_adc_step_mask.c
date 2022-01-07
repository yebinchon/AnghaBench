
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tiadc_device {int channels; } ;


 int TOTAL_STEPS ;

__attribute__((used)) static u32 get_adc_step_mask(struct tiadc_device *adc_dev)
{
 u32 step_en;

 step_en = ((1 << adc_dev->channels) - 1);
 step_en <<= TOTAL_STEPS - adc_dev->channels + 1;
 return step_en;
}
