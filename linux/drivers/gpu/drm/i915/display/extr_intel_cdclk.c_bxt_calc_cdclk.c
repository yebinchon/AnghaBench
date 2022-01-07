
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bxt_calc_cdclk(int min_cdclk)
{
 if (min_cdclk > 576000)
  return 624000;
 else if (min_cdclk > 384000)
  return 576000;
 else if (min_cdclk > 288000)
  return 384000;
 else if (min_cdclk > 144000)
  return 288000;
 else
  return 144000;
}
