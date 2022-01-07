
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_i915_private* i915; } ;
struct i915_ggtt {int num_fences; int fence_list; struct i915_fence_reg* fence_regs; int userfault_wakeref; int userfault_list; TYPE_1__ vm; } ;
struct i915_fence_reg {int id; int link; struct drm_i915_private* i915; } ;
struct drm_i915_private {int uncore; int runtime_pm; } ;
struct TYPE_4__ {int fence_num; } ;


 int INIT_LIST_HEAD (int *) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_G33 (struct drm_i915_private*) ;
 scalar_t__ IS_I945G (struct drm_i915_private*) ;
 scalar_t__ IS_I945GM (struct drm_i915_private*) ;
 scalar_t__ IS_PINEVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 TYPE_2__ avail_rs ;
 int detect_bit_6_swizzle (struct drm_i915_private*) ;
 int i915_gem_restore_fences (struct drm_i915_private*) ;
 int intel_uncore_read (int *,int ) ;
 scalar_t__ intel_vgpu_active (struct drm_i915_private*) ;
 int intel_wakeref_auto_init (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int vgtif_reg (int ) ;

void i915_ggtt_init_fences(struct i915_ggtt *ggtt)
{
 struct drm_i915_private *i915 = ggtt->vm.i915;
 int num_fences;
 int i;

 INIT_LIST_HEAD(&ggtt->fence_list);
 INIT_LIST_HEAD(&ggtt->userfault_list);
 intel_wakeref_auto_init(&ggtt->userfault_wakeref, &i915->runtime_pm);

 detect_bit_6_swizzle(i915);

 if (INTEL_GEN(i915) >= 7 &&
     !(IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)))
  num_fences = 32;
 else if (INTEL_GEN(i915) >= 4 ||
   IS_I945G(i915) || IS_I945GM(i915) ||
   IS_G33(i915) || IS_PINEVIEW(i915))
  num_fences = 16;
 else
  num_fences = 8;

 if (intel_vgpu_active(i915))
  num_fences = intel_uncore_read(&i915->uncore,
            vgtif_reg(avail_rs.fence_num));


 for (i = 0; i < num_fences; i++) {
  struct i915_fence_reg *fence = &ggtt->fence_regs[i];

  fence->i915 = i915;
  fence->id = i;
  list_add_tail(&fence->link, &ggtt->fence_list);
 }
 ggtt->num_fences = num_fences;

 i915_gem_restore_fences(i915);
}
