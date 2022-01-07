
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ti_sci_resource {size_t sets; TYPE_1__* desc; } ;
struct TYPE_2__ {scalar_t__ num; } ;



u32 ti_sci_get_num_resources(struct ti_sci_resource *res)
{
 u32 set, count = 0;

 for (set = 0; set < res->sets; set++)
  count += res->desc[set].num;

 return count;
}
