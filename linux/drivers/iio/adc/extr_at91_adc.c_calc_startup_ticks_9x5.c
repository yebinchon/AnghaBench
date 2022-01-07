
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int const*) ;

__attribute__((used)) static u32 calc_startup_ticks_9x5(u32 startup_time, u32 adc_clk_khz)
{




 static const int startup_lookup[] = {
  0, 8, 16, 24,
  64, 80, 96, 112,
  512, 576, 640, 704,
  768, 832, 896, 960
  };
 int i, size = ARRAY_SIZE(startup_lookup);
 unsigned int ticks;

 ticks = startup_time * adc_clk_khz / 1000;
 for (i = 0; i < size; i++)
  if (ticks < startup_lookup[i])
   break;

 ticks = i;
 if (ticks == size)

  ticks = size - 1;

 return ticks;
}
