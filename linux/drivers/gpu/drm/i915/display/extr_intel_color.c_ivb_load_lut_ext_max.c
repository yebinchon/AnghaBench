
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int PREC_PAL_EXT2_GC_MAX (int,int) ;
 int PREC_PAL_EXT_GC_MAX (int,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void ivb_load_lut_ext_max(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;


 I915_WRITE(PREC_PAL_EXT_GC_MAX(pipe, 0), 1 << 16);
 I915_WRITE(PREC_PAL_EXT_GC_MAX(pipe, 1), 1 << 16);
 I915_WRITE(PREC_PAL_EXT_GC_MAX(pipe, 2), 1 << 16);






 if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv)) {
  I915_WRITE(PREC_PAL_EXT2_GC_MAX(pipe, 0), 1 << 16);
  I915_WRITE(PREC_PAL_EXT2_GC_MAX(pipe, 1), 1 << 16);
  I915_WRITE(PREC_PAL_EXT2_GC_MAX(pipe, 2), 1 << 16);
 }
}
