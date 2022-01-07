
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DIV_ROUND_UP (int,int) ;

__attribute__((used)) static u8 bxt_calc_voltage_level(int cdclk)
{
 return DIV_ROUND_UP(cdclk, 25000);
}
