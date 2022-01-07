
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PER_PIXEL_ALPHA_BYPASS_EN ;
 int PIPE_CHICKEN (int) ;
 int PIXEL_ROUNDING_TRUNC_FB_PASSTHRU ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void icl_set_pipe_chicken(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 u32 tmp;

 tmp = I915_READ(PIPE_CHICKEN(pipe));






 tmp |= PER_PIXEL_ALPHA_BYPASS_EN;






 tmp |= PIXEL_ROUNDING_TRUNC_FB_PASSTHRU;
 I915_WRITE(PIPE_CHICKEN(pipe), tmp);
}
