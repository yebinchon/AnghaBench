
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 skl_calc_voltage_level(int cdclk)
{
 if (cdclk > 540000)
  return 3;
 else if (cdclk > 450000)
  return 2;
 else if (cdclk > 337500)
  return 1;
 else
  return 0;
}
