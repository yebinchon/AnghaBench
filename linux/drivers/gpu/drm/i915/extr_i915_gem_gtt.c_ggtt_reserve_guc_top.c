
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ total; int i915; } ;
struct i915_ggtt {int uc_fw; TYPE_1__ vm; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int GEM_BUG_ON (int) ;
 scalar_t__ GUC_GGTT_TOP ;
 int I915_COLOR_UNEVICTABLE ;
 int PIN_NOEVICT ;
 int USES_GUC (int ) ;
 int i915_gem_gtt_reserve (TYPE_1__*,int *,scalar_t__,scalar_t__,int ,int ) ;

__attribute__((used)) static int ggtt_reserve_guc_top(struct i915_ggtt *ggtt)
{
 u64 size;
 int ret;

 if (!USES_GUC(ggtt->vm.i915))
  return 0;

 GEM_BUG_ON(ggtt->vm.total <= GUC_GGTT_TOP);
 size = ggtt->vm.total - GUC_GGTT_TOP;

 ret = i915_gem_gtt_reserve(&ggtt->vm, &ggtt->uc_fw, size,
       GUC_GGTT_TOP, I915_COLOR_UNEVICTABLE,
       PIN_NOEVICT);
 if (ret)
  DRM_DEBUG_DRIVER("Failed to reserve top of GGTT for GuC\n");

 return ret;
}
