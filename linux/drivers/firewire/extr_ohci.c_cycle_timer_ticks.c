
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 cycle_timer_ticks(u32 cycle_timer)
{
 u32 ticks;

 ticks = cycle_timer & 0xfff;
 ticks += 3072 * ((cycle_timer >> 12) & 0x1fff);
 ticks += (3072 * 8000) * (cycle_timer >> 25);

 return ticks;
}
