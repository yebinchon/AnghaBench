
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 bdw_calc_voltage_level(int cdclk)
{
 switch (cdclk) {
 default:
 case 337500:
  return 2;
 case 450000:
  return 0;
 case 540000:
  return 1;
 case 675000:
  return 3;
 }
}
