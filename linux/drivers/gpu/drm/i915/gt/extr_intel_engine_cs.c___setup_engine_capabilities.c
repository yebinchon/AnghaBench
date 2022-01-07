
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_cs {scalar_t__ class; scalar_t__ instance; int mask; int uabi_capabilities; struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int vdbox_sfc_access; } ;


 int I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC ;
 int I915_VIDEO_CLASS_CAPABILITY_HEVC ;
 int INTEL_GEN (struct drm_i915_private*) ;
 TYPE_1__* RUNTIME_INFO (struct drm_i915_private*) ;
 scalar_t__ VIDEO_DECODE_CLASS ;
 scalar_t__ VIDEO_ENHANCEMENT_CLASS ;

__attribute__((used)) static void __setup_engine_capabilities(struct intel_engine_cs *engine)
{
 struct drm_i915_private *i915 = engine->i915;

 if (engine->class == VIDEO_DECODE_CLASS) {




  if (INTEL_GEN(i915) >= 11 ||
      (INTEL_GEN(i915) >= 9 && engine->instance == 0))
   engine->uabi_capabilities |=
    I915_VIDEO_CLASS_CAPABILITY_HEVC;





  if ((INTEL_GEN(i915) >= 11 &&
       RUNTIME_INFO(i915)->vdbox_sfc_access & engine->mask) ||
      (INTEL_GEN(i915) >= 9 && engine->instance == 0))
   engine->uabi_capabilities |=
    I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC;
 } else if (engine->class == VIDEO_ENHANCEMENT_CLASS) {
  if (INTEL_GEN(i915) >= 9)
   engine->uabi_capabilities |=
    I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC;
 }
}
