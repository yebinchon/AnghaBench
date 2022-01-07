
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct d40_desc {scalar_t__ lcla_alloc; } ;
struct d40_chan {TYPE_3__* base; TYPE_1__* phy_chan; } ;
struct TYPE_5__ {int lock; struct d40_desc** alloc_map; } ;
struct TYPE_6__ {TYPE_2__ lcla_pool; } ;
struct TYPE_4__ {int num; } ;


 int D40_LCLA_LINK_PER_EVENT_GRP ;
 int EINVAL ;
 scalar_t__ chan_is_physical (struct d40_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int d40_lcla_free_all(struct d40_chan *d40c,
        struct d40_desc *d40d)
{
 unsigned long flags;
 int i;
 int ret = -EINVAL;

 if (chan_is_physical(d40c))
  return 0;

 spin_lock_irqsave(&d40c->base->lcla_pool.lock, flags);

 for (i = 1 ; i < D40_LCLA_LINK_PER_EVENT_GRP / 2; i++) {
  int idx = d40c->phy_chan->num * D40_LCLA_LINK_PER_EVENT_GRP + i;

  if (d40c->base->lcla_pool.alloc_map[idx] == d40d) {
   d40c->base->lcla_pool.alloc_map[idx] = ((void*)0);
   d40d->lcla_alloc--;
   if (d40d->lcla_alloc == 0) {
    ret = 0;
    break;
   }
  }
 }

 spin_unlock_irqrestore(&d40c->base->lcla_pool.lock, flags);

 return ret;

}
