
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int lock; } ;
struct policy_work {int dummy; } ;
struct dm_cache_policy {int dummy; } ;
typedef int dm_oblock_t ;
typedef int dm_cblock_t ;


 int __lookup (struct smq_policy*,int ,int *,int,int,struct policy_work**,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static int smq_lookup_with_work(struct dm_cache_policy *p,
    dm_oblock_t oblock, dm_cblock_t *cblock,
    int data_dir, bool fast_copy,
    struct policy_work **work)
{
 int r;
 bool background_queued;
 unsigned long flags;
 struct smq_policy *mq = to_smq_policy(p);

 spin_lock_irqsave(&mq->lock, flags);
 r = __lookup(mq, oblock, cblock, data_dir, fast_copy, work, &background_queued);
 spin_unlock_irqrestore(&mq->lock, flags);

 return r;
}
