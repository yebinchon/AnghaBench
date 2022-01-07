
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scale; int gain; } ;


 int EINVAL ;
 int HX711_GAIN_MAX ;
 TYPE_1__* hx711_gain_to_scale ;

__attribute__((used)) static int hx711_get_scale_to_gain(int scale)
{
 int i;

 for (i = 0; i < HX711_GAIN_MAX; i++)
  if (hx711_gain_to_scale[i].scale == scale)
   return hx711_gain_to_scale[i].gain;
 return -EINVAL;
}
