
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_timeline {int sync; int link; scalar_t__ active_count; int mutex; TYPE_1__* gt; } ;
struct intel_gt_timelines {int lock; } ;
struct TYPE_2__ {struct intel_gt_timelines timelines; } ;


 int GEM_BUG_ON (int) ;
 int i915_syncmap_free (int *) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void intel_timeline_exit(struct intel_timeline *tl)
{
 struct intel_gt_timelines *timelines = &tl->gt->timelines;
 unsigned long flags;

 lockdep_assert_held(&tl->mutex);

 GEM_BUG_ON(!tl->active_count);
 if (--tl->active_count)
  return;

 spin_lock_irqsave(&timelines->lock, flags);
 list_del(&tl->link);
 spin_unlock_irqrestore(&timelines->lock, flags);






 i915_syncmap_free(&tl->sync);
}
