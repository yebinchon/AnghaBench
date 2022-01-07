
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gt_timelines {int hwsp_free_list; int active_list; } ;
struct intel_gt {struct intel_gt_timelines timelines; } ;


 int GEM_BUG_ON (int) ;
 int list_empty (int *) ;

__attribute__((used)) static void timelines_fini(struct intel_gt *gt)
{
 struct intel_gt_timelines *timelines = &gt->timelines;

 GEM_BUG_ON(!list_empty(&timelines->active_list));
 GEM_BUG_ON(!list_empty(&timelines->hwsp_free_list));
}
