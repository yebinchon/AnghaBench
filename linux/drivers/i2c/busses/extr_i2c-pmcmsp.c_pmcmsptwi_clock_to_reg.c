
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmcmsptwi_clock {int filter; int clock; } ;



__attribute__((used)) static inline u32 pmcmsptwi_clock_to_reg(
   const struct pmcmsptwi_clock *clock)
{
 return ((clock->filter & 0xf) << 12) | (clock->clock & 0x03ff);
}
