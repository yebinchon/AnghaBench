
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int dummy; } ;
struct drm_i915_private {struct intel_crtc** pipe_to_crtc_mapping; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;



__attribute__((used)) static inline struct intel_crtc *
intel_get_crtc_for_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 return dev_priv->pipe_to_crtc_mapping[pipe];
}
