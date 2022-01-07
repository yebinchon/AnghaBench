
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct i915_ggtt {int fence_list; TYPE_2__ vm; } ;
struct i915_fence_reg {int link; TYPE_1__* i915; } ;
struct TYPE_3__ {struct i915_ggtt ggtt; } ;


 int list_add (int *,int *) ;
 int lockdep_assert_held (int *) ;

void i915_unreserve_fence(struct i915_fence_reg *fence)
{
 struct i915_ggtt *ggtt = &fence->i915->ggtt;

 lockdep_assert_held(&ggtt->vm.mutex);

 list_add(&fence->link, &ggtt->fence_list);
}
