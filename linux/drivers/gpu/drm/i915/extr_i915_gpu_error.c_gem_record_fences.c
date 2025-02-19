
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {int dummy; } ;
struct i915_gpu_state {int nfence; void** fence; struct drm_i915_private* i915; } ;
struct TYPE_2__ {int num_fences; } ;
struct drm_i915_private {TYPE_1__ ggtt; struct intel_uncore uncore; } ;


 int FENCE_REG (int) ;
 int FENCE_REG_965_LO (int) ;
 int FENCE_REG_GEN6_LO (int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 void* intel_uncore_read (struct intel_uncore*,int ) ;
 void* intel_uncore_read64 (struct intel_uncore*,int ) ;

__attribute__((used)) static void gem_record_fences(struct i915_gpu_state *error)
{
 struct drm_i915_private *dev_priv = error->i915;
 struct intel_uncore *uncore = &dev_priv->uncore;
 int i;

 if (INTEL_GEN(dev_priv) >= 6) {
  for (i = 0; i < dev_priv->ggtt.num_fences; i++)
   error->fence[i] =
    intel_uncore_read64(uncore,
          FENCE_REG_GEN6_LO(i));
 } else if (INTEL_GEN(dev_priv) >= 4) {
  for (i = 0; i < dev_priv->ggtt.num_fences; i++)
   error->fence[i] =
    intel_uncore_read64(uncore,
          FENCE_REG_965_LO(i));
 } else {
  for (i = 0; i < dev_priv->ggtt.num_fences; i++)
   error->fence[i] =
    intel_uncore_read(uncore, FENCE_REG(i));
 }
 error->nfence = i;
}
