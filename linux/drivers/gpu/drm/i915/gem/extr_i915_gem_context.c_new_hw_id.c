
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_ida; int mutex; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;
typedef int gfp_t ;


 unsigned int GEN11_MAX_CONTEXT_HW_ID ;
 unsigned int GEN12_MAX_CONTEXT_HW_ID ;
 int INTEL_GEN (struct drm_i915_private*) ;
 unsigned int MAX_CONTEXT_HW_ID ;
 unsigned int MAX_GUC_CONTEXT_HW_ID ;
 scalar_t__ USES_GUC_SUBMISSION (struct drm_i915_private*) ;
 int ida_simple_get (int *,int ,unsigned int,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline int new_hw_id(struct drm_i915_private *i915, gfp_t gfp)
{
 unsigned int max;

 lockdep_assert_held(&i915->contexts.mutex);

 if (INTEL_GEN(i915) >= 12)
  max = GEN12_MAX_CONTEXT_HW_ID;
 else if (INTEL_GEN(i915) >= 11)
  max = GEN11_MAX_CONTEXT_HW_ID;
 else if (USES_GUC_SUBMISSION(i915))




  max = MAX_GUC_CONTEXT_HW_ID;
 else
  max = MAX_CONTEXT_HW_ID;

 return ida_simple_get(&i915->contexts.hw_ida, 0, max, gfp);
}
