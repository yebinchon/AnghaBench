
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_pp_clock_levels_with_voltage {int num_levels; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ clocks_in_khz; } ;



__attribute__((used)) static bool verify_clock_values(struct dm_pp_clock_levels_with_voltage *clks)
{
 int i;

 if (clks->num_levels == 0)
  return 0;

 for (i = 0; i < clks->num_levels; i++)

  if (clks->data[i].clocks_in_khz == 0)
   return 0;

 return 1;
}
