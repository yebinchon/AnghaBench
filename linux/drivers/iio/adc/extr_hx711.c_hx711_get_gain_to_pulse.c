
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gain; int gain_pulse; } ;


 int HX711_GAIN_MAX ;
 TYPE_1__* hx711_gain_to_scale ;

__attribute__((used)) static int hx711_get_gain_to_pulse(int gain)
{
 int i;

 for (i = 0; i < HX711_GAIN_MAX; i++)
  if (hx711_gain_to_scale[i].gain == gain)
   return hx711_gain_to_scale[i].gain_pulse;
 return 1;
}
