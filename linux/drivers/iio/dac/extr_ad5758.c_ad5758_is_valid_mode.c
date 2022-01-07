
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ad5758_dc_dc_mode { ____Placeholder_ad5758_dc_dc_mode } ad5758_dc_dc_mode ;






__attribute__((used)) static bool ad5758_is_valid_mode(enum ad5758_dc_dc_mode mode)
{
 switch (mode) {
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
