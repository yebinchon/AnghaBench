
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tiadc_device {int* channel_step; scalar_t__* channel_line; } ;
struct iio_chan_spec {scalar_t__ channel; } ;


 int ARRAY_SIZE (int*) ;
 int WARN_ON (int) ;

__attribute__((used)) static u32 get_adc_chan_step_mask(struct tiadc_device *adc_dev,
  struct iio_chan_spec const *chan)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(adc_dev->channel_step); i++) {
  if (chan->channel == adc_dev->channel_line[i]) {
   u32 step;

   step = adc_dev->channel_step[i];

   return 1 << (step + 1);
  }
 }
 WARN_ON(1);
 return 0;
}
