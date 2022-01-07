
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bdw_calc_cdclk(int min_cdclk)
{
 if (min_cdclk > 540000)
  return 675000;
 else if (min_cdclk > 450000)
  return 540000;
 else if (min_cdclk > 337500)
  return 450000;
 else
  return 337500;
}
