
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int sht21_rh_ticks_to_per_cent_mille(int ticks)
{
 ticks &= ~0x0003;




 return ((15625 * ticks) >> 13) - 6000;
}
