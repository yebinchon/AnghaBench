
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_timeline {int link; int active_count; int pin_count; int mutex; TYPE_1__* gt; } ;
struct intel_gt_timelines {int lock; int active_list; } ;
struct TYPE_2__ {struct intel_gt_timelines timelines; } ;


 int GEM_BUG_ON (int) ;
 int atomic_read (int *) ;
 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void intel_timeline_enter(struct intel_timeline *tl)
{
 struct intel_gt_timelines *timelines = &tl->gt->timelines;
 unsigned long flags;

 lockdep_assert_held(&tl->mutex);

 GEM_BUG_ON(!atomic_read(&tl->pin_count));
 if (tl->active_count++)
  return;
 GEM_BUG_ON(!tl->active_count);

 spin_lock_irqsave(&timelines->lock, flags);
 list_add(&tl->link, &timelines->active_list);
 spin_unlock_irqrestore(&timelines->lock, flags);
}
