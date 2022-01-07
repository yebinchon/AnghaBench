
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int round_up (int,int) ;

__attribute__((used)) static u32 calc_startup_ticks_9260(u32 startup_time, u32 adc_clk_khz)
{






 return round_up((startup_time * adc_clk_khz / 1000) - 1, 8) / 8;
}
