
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ti_sci_resource {size_t sets; int lock; TYPE_1__* desc; } ;
struct TYPE_2__ {size_t start; size_t num; int res_map; } ;


 int clear_bit (size_t,int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void ti_sci_release_resource(struct ti_sci_resource *res, u16 id)
{
 unsigned long flags;
 u16 set;

 raw_spin_lock_irqsave(&res->lock, flags);
 for (set = 0; set < res->sets; set++) {
  if (res->desc[set].start <= id &&
      (res->desc[set].num + res->desc[set].start) > id)
   clear_bit(id - res->desc[set].start,
      res->desc[set].res_map);
 }
 raw_spin_unlock_irqrestore(&res->lock, flags);
}
