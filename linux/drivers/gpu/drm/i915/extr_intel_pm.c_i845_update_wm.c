
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int dev; } ;
struct intel_crtc {TYPE_2__* config; TYPE_4__ base; } ;
struct TYPE_7__ {int (* get_fifo_size ) (struct drm_i915_private*,int ) ;} ;
struct drm_i915_private {TYPE_3__ display; } ;
struct drm_display_mode {int crtc_clock; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int FW_BLC ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PLANE_A ;
 int i845_wm_info ;
 int intel_calculate_wm (int ,int *,int ,int,int ) ;
 int pessimal_latency_ns ;
 struct intel_crtc* single_enabled_crtc (struct drm_i915_private*) ;
 int stub1 (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void i845_update_wm(struct intel_crtc *unused_crtc)
{
 struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 struct intel_crtc *crtc;
 const struct drm_display_mode *adjusted_mode;
 u32 fwater_lo;
 int planea_wm;

 crtc = single_enabled_crtc(dev_priv);
 if (crtc == ((void*)0))
  return;

 adjusted_mode = &crtc->config->base.adjusted_mode;
 planea_wm = intel_calculate_wm(adjusted_mode->crtc_clock,
           &i845_wm_info,
           dev_priv->display.get_fifo_size(dev_priv, PLANE_A),
           4, pessimal_latency_ns);
 fwater_lo = I915_READ(FW_BLC) & ~0xfff;
 fwater_lo |= (3<<8) | planea_wm;

 DRM_DEBUG_KMS("Setting FIFO watermarks - A: %d\n", planea_wm);

 I915_WRITE(FW_BLC, fwater_lo);
}
