
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int cnl_calc_cdclk(int min_cdclk)
{
 if (min_cdclk > 336000)
  return 528000;
 else if (min_cdclk > 168000)
  return 336000;
 else
  return 168000;
}
