
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt_timelines {int hwsp_free_list; int hwsp_lock; int active_list; int lock; } ;
struct intel_gt {struct intel_gt_timelines timelines; } ;


 int INIT_LIST_HEAD (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void timelines_init(struct intel_gt *gt)
{
 struct intel_gt_timelines *timelines = &gt->timelines;

 spin_lock_init(&timelines->lock);
 INIT_LIST_HEAD(&timelines->active_list);

 spin_lock_init(&timelines->hwsp_lock);
 INIT_LIST_HEAD(&timelines->hwsp_free_list);
}
