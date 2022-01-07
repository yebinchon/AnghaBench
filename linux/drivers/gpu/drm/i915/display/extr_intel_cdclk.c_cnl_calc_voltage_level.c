
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 cnl_calc_voltage_level(int cdclk)
{
 if (cdclk > 336000)
  return 2;
 else if (cdclk > 168000)
  return 1;
 else
  return 0;
}
