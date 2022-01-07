
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ad5764_state {TYPE_2__* vref_reg; TYPE_1__* chip_info; } ;
struct TYPE_4__ {int consumer; } ;
struct TYPE_3__ {int int_vref; } ;


 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad5764_get_channel_vref(struct ad5764_state *st,
 unsigned int channel)
{
 if (st->chip_info->int_vref)
  return st->chip_info->int_vref;
 else
  return regulator_get_voltage(st->vref_reg[channel / 2].consumer);
}
