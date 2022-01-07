
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 hem_list_calc_ba_range(int hopnum, int bt_level, int unit)
{
 u32 step;
 int max;
 int i;

 if (hopnum <= bt_level)
  return 0;
 step = 1;
 max = hopnum - bt_level;
 for (i = 0; i < max; i++)
  step = step * unit;

 return step;
}
