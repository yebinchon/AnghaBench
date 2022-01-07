
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5755_state {TYPE_1__* chip_info; } ;
typedef enum ad5755_mode { ____Placeholder_ad5755_mode } ad5755_mode ;
struct TYPE_2__ {int has_voltage_out; } ;
__attribute__((used)) static bool ad5755_is_valid_mode(struct ad5755_state *st, enum ad5755_mode mode)
{
 switch (mode) {
 case 130:
 case 131:
 case 128:
 case 129:
  return st->chip_info->has_voltage_out;
 case 132:
 case 134:
 case 133:
  return 1;
 default:
  return 0;
 }
}
