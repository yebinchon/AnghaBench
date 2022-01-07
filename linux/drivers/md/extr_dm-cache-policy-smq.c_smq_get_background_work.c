
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smq_policy {int lock; int bg_work; } ;
struct policy_work {int dummy; } ;
struct dm_cache_policy {int dummy; } ;


 int ENODATA ;
 int btracker_issue (int ,struct policy_work**) ;
 int clean_target_met (struct smq_policy*,int) ;
 int queue_writeback (struct smq_policy*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct smq_policy* to_smq_policy (struct dm_cache_policy*) ;

__attribute__((used)) static int smq_get_background_work(struct dm_cache_policy *p, bool idle,
       struct policy_work **result)
{
 int r;
 unsigned long flags;
 struct smq_policy *mq = to_smq_policy(p);

 spin_lock_irqsave(&mq->lock, flags);
 r = btracker_issue(mq->bg_work, result);
 if (r == -ENODATA) {
  if (!clean_target_met(mq, idle)) {
   queue_writeback(mq, idle);
   r = btracker_issue(mq->bg_work, result);
  }
 }
 spin_unlock_irqrestore(&mq->lock, flags);

 return r;
}
