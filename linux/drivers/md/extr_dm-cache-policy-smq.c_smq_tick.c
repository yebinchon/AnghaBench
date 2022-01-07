
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int lock; int tick; } ;
struct dm_cache_policy {int dummy; } ;


 int end_cache_period (struct smq_policy*) ;
 int end_hotspot_period (struct smq_policy*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;
 int update_sentinels (struct smq_policy*) ;

__attribute__((used)) static void smq_tick(struct dm_cache_policy *p, bool can_block)
{
 struct smq_policy *mq = to_smq_policy(p);
 unsigned long flags;

 spin_lock_irqsave(&mq->lock, flags);
 mq->tick++;
 update_sentinels(mq);
 end_hotspot_period(mq);
 end_cache_period(mq);
 spin_unlock_irqrestore(&mq->lock, flags);
}
