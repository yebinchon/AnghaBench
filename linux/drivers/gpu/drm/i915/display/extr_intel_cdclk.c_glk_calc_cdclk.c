
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int glk_calc_cdclk(int min_cdclk)
{
 if (min_cdclk > 158400)
  return 316800;
 else if (min_cdclk > 79200)
  return 158400;
 else
  return 79200;
}
