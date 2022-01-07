
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ad5360_state {TYPE_1__* chip_info; } ;
struct TYPE_2__ {unsigned int channels_per_group; unsigned int num_vrefs; } ;



__attribute__((used)) static unsigned int ad5360_get_channel_vref_index(struct ad5360_state *st,
 unsigned int channel)
{
 unsigned int i;



 i = channel / st->chip_info->channels_per_group;
 if (i >= st->chip_info->num_vrefs)
  i = st->chip_info->num_vrefs - 1;

 return i;
}
