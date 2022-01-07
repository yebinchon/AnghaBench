
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tsc2007 {int x_plate_ohms; } ;
struct ts_event {int x; int z1; int z2; } ;


 int MAX_12BIT ;
 scalar_t__ likely (int) ;

u32 tsc2007_calculate_resistance(struct tsc2007 *tsc, struct ts_event *tc)
{
 u32 rt = 0;


 if (tc->x == MAX_12BIT)
  tc->x = 0;

 if (likely(tc->x && tc->z1)) {

  rt = tc->z2 - tc->z1;
  rt *= tc->x;
  rt *= tsc->x_plate_ohms;
  rt /= tc->z1;
  rt = (rt + 2047) >> 12;
 }

 return rt;
}
