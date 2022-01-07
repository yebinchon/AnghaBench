
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tiadc_device {int* channel_step; } ;



__attribute__((used)) static u32 get_adc_step_bit(struct tiadc_device *adc_dev, int chan)
{
 return 1 << adc_dev->channel_step[chan];
}
