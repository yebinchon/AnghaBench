
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (unsigned int const*) ;

__attribute__((used)) static unsigned at91_adc_startup_time(unsigned startup_time_min,
          unsigned adc_clk_khz)
{
 static const unsigned int startup_lookup[] = {
    0, 8, 16, 24,
   64, 80, 96, 112,
  512, 576, 640, 704,
  768, 832, 896, 960
  };
 unsigned ticks_min, i;






 ticks_min = startup_time_min * adc_clk_khz / 1000;
 for (i = 0; i < ARRAY_SIZE(startup_lookup); i++)
  if (startup_lookup[i] > ticks_min)
   break;

 return i;
}
