
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5360_state {TYPE_1__* vref_reg; } ;
struct TYPE_2__ {int consumer; } ;


 unsigned int ad5360_get_channel_vref_index (struct ad5360_state*,unsigned int) ;
 int regulator_get_voltage (int ) ;

__attribute__((used)) static int ad5360_get_channel_vref(struct ad5360_state *st,
 unsigned int channel)
{
 unsigned int i = ad5360_get_channel_vref_index(st, channel);

 return regulator_get_voltage(st->vref_reg[i].consumer);
}
