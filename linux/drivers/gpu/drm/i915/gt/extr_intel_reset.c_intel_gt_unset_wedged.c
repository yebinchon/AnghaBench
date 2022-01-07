
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;
struct intel_gt {TYPE_1__ reset; } ;


 int __intel_gt_unset_wedged (struct intel_gt*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool intel_gt_unset_wedged(struct intel_gt *gt)
{
 bool result;

 mutex_lock(&gt->reset.mutex);
 result = __intel_gt_unset_wedged(gt);
 mutex_unlock(&gt->reset.mutex);

 return result;
}
