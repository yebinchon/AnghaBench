
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_wopcm {int size; } ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_private {TYPE_1__ drm; } ;


 int DRM_DEV_DEBUG_DRIVER (int ,char*,int) ;
 int GEN11_WOPCM_SIZE ;
 int GEN9_WOPCM_SIZE ;
 int HAS_GT_UC (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 struct drm_i915_private* wopcm_to_i915 (struct intel_wopcm*) ;

void intel_wopcm_init_early(struct intel_wopcm *wopcm)
{
 struct drm_i915_private *i915 = wopcm_to_i915(wopcm);

 if (!HAS_GT_UC(i915))
  return;

 if (INTEL_GEN(i915) >= 11)
  wopcm->size = GEN11_WOPCM_SIZE;
 else
  wopcm->size = GEN9_WOPCM_SIZE;

 DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "WOPCM: %uK\n", wopcm->size / 1024);
}
