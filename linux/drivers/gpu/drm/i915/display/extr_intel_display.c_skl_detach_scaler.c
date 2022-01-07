
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int I915_WRITE (int ,int ) ;
 int SKL_PS_CTRL (int ,int) ;
 int SKL_PS_WIN_POS (int ,int) ;
 int SKL_PS_WIN_SZ (int ,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void skl_detach_scaler(struct intel_crtc *intel_crtc, int id)
{
 struct drm_device *dev = intel_crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);

 I915_WRITE(SKL_PS_CTRL(intel_crtc->pipe, id), 0);
 I915_WRITE(SKL_PS_WIN_POS(intel_crtc->pipe, id), 0);
 I915_WRITE(SKL_PS_WIN_SZ(intel_crtc->pipe, id), 0);
}
