
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ad5755_mode { ____Placeholder_ad5755_mode } ad5755_mode ;







__attribute__((used)) static bool ad5755_is_voltage_mode(enum ad5755_mode mode)
{
 switch (mode) {
 case 130:
 case 131:
 case 128:
 case 129:
  return 1;
 default:
  return 0;
 }
}
