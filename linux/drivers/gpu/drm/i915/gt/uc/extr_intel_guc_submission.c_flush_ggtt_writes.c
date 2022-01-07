
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_vma {TYPE_1__* vm; } ;
struct drm_i915_private {int uncore; } ;
struct TYPE_2__ {struct drm_i915_private* i915; } ;


 int GUC_STATUS ;
 scalar_t__ i915_vma_is_map_and_fenceable (struct i915_vma*) ;
 int intel_uncore_posting_read_fw (int *,int ) ;

__attribute__((used)) static void flush_ggtt_writes(struct i915_vma *vma)
{
 struct drm_i915_private *i915 = vma->vm->i915;

 if (i915_vma_is_map_and_fenceable(vma))
  intel_uncore_posting_read_fw(&i915->uncore, GUC_STATUS);
}
