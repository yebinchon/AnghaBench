
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nr_allocated; } ;
struct smq_policy {int lock; TYPE_1__ cache_alloc; } ;
struct dm_cache_policy {int dummy; } ;
typedef int dm_cblock_t ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int to_cblock (int ) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static dm_cblock_t smq_residency(struct dm_cache_policy *p)
{
 dm_cblock_t r;
 unsigned long flags;
 struct smq_policy *mq = to_smq_policy(p);

 spin_lock_irqsave(&mq->lock, flags);
 r = to_cblock(mq->cache_alloc.nr_allocated);
 spin_unlock_irqrestore(&mq->lock, flags);

 return r;
}
