
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int pipe; } ;


 int I915_READ (int ) ;
 int PIPE_FRMCOUNT_G4X (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 TYPE_1__* to_intel_crtc (struct drm_crtc*) ;

u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->dev);
 enum pipe pipe = to_intel_crtc(crtc)->pipe;

 return I915_READ(PIPE_FRMCOUNT_G4X(pipe));
}
