
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static inline int hih6130_rh_ticks_to_per_cent_mille(int ticks)
{
 ticks &= ~0xC000;




 return DIV_ROUND_CLOSEST(ticks * 1000, 16382) * 100;
}
