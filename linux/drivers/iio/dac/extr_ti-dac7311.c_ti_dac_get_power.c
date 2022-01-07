
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ti_dac_chip {scalar_t__ powerdown_mode; } ;



__attribute__((used)) static u8 ti_dac_get_power(struct ti_dac_chip *ti_dac, bool powerdown)
{
 if (powerdown)
  return ti_dac->powerdown_mode + 1;

 return 0;
}
