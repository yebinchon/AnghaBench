
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_LPT (struct drm_i915_private*) ;
 int PIPE_A ;
 struct drm_i915_private* to_i915 (int ) ;

enum pipe intel_crtc_pch_transcoder(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 if (HAS_PCH_LPT(dev_priv))
  return PIPE_A;
 else
  return crtc->pipe;
}
