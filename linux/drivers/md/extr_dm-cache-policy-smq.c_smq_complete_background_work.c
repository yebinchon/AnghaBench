
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int lock; } ;
struct policy_work {int dummy; } ;
struct dm_cache_policy {int dummy; } ;


 int __complete_background_work (struct smq_policy*,struct policy_work*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static void smq_complete_background_work(struct dm_cache_policy *p,
      struct policy_work *work,
      bool success)
{
 unsigned long flags;
 struct smq_policy *mq = to_smq_policy(p);

 spin_lock_irqsave(&mq->lock, flags);
 __complete_background_work(mq, work, success);
 spin_unlock_irqrestore(&mq->lock, flags);
}
