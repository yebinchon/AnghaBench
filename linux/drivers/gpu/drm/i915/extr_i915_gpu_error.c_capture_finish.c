
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct i915_gpu_state {TYPE_1__* i915; } ;
struct TYPE_6__ {int (* clear_range ) (TYPE_3__*,int const,int ) ;} ;
struct TYPE_5__ {int start; } ;
struct i915_ggtt {TYPE_3__ vm; TYPE_2__ error_capture; } ;
struct TYPE_4__ {struct i915_ggtt ggtt; } ;


 int PAGE_SIZE ;
 int stub1 (TYPE_3__*,int const,int ) ;

__attribute__((used)) static void capture_finish(struct i915_gpu_state *error)
{
 struct i915_ggtt *ggtt = &error->i915->ggtt;
 const u64 slot = ggtt->error_capture.start;

 ggtt->vm.clear_range(&ggtt->vm, slot, PAGE_SIZE);
}
