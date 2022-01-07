
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int lock; } ;
struct dm_cache_policy {int dummy; } ;
typedef int dm_cblock_t ;


 int __smq_set_clear_dirty (struct smq_policy*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static void smq_clear_dirty(struct dm_cache_policy *p, dm_cblock_t cblock)
{
 struct smq_policy *mq = to_smq_policy(p);
 unsigned long flags;

 spin_lock_irqsave(&mq->lock, flags);
 __smq_set_clear_dirty(mq, cblock, 0);
 spin_unlock_irqrestore(&mq->lock, flags);
}
