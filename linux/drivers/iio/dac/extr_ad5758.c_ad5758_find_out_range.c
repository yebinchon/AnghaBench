
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min; int max; int reg; } ;
struct ad5758_state {TYPE_1__ out_range; } ;
struct ad5758_range {int min; int max; int reg; } ;


 int EINVAL ;

__attribute__((used)) static int ad5758_find_out_range(struct ad5758_state *st,
     const struct ad5758_range *range,
     unsigned int size,
     int min, int max)
{
 int i;

 for (i = 0; i < size; i++) {
  if ((min == range[i].min) && (max == range[i].max)) {
   st->out_range.reg = range[i].reg;
   st->out_range.min = range[i].min;
   st->out_range.max = range[i].max;

   return 0;
  }
 }

 return -EINVAL;
}
