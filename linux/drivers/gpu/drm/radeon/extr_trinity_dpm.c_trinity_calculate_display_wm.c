
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct trinity_ps {int num_levels; TYPE_1__* levels; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {int sclk; } ;



__attribute__((used)) static u8 trinity_calculate_display_wm(struct radeon_device *rdev,
           struct trinity_ps *ps, u32 index)
{
 if (ps == ((void*)0) || ps->num_levels <= 1)
  return 0;
 else if (ps->num_levels == 2) {
  if (index == 0)
   return 0;
  else
   return 1;
 } else {
  if (index == 0)
   return 0;
  else if (ps->levels[index].sclk < 30000)
   return 0;
  else
   return 1;
 }
}
