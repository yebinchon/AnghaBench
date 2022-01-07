
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_rps_ei {void* media_c0; void* render_c0; int ktime; } ;
struct drm_i915_private {int dummy; } ;


 void* I915_READ (int ) ;
 int VLV_MEDIA_C0_COUNT ;
 int VLV_RENDER_C0_COUNT ;
 int ktime_get_raw () ;

__attribute__((used)) static void vlv_c0_read(struct drm_i915_private *dev_priv,
   struct intel_rps_ei *ei)
{
 ei->ktime = ktime_get_raw();
 ei->render_c0 = I915_READ(VLV_RENDER_C0_COUNT);
 ei->media_c0 = I915_READ(VLV_MEDIA_C0_COUNT);
}
