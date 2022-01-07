
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_crtc {scalar_t__ pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int INTEL_GEN (struct drm_i915_private const*) ;
 scalar_t__ IS_I915G (struct drm_i915_private const*) ;
 scalar_t__ PIPE_A ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_crtc_supports_double_wide(const struct intel_crtc *crtc)
{
 const struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);


 return INTEL_GEN(dev_priv) < 4 &&
  (crtc->pipe == PIPE_A || IS_I915G(dev_priv));
}
