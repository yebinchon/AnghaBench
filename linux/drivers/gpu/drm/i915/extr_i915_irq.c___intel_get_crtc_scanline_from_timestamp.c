
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_display_mode {scalar_t__ crtc_vblank_start; scalar_t__ crtc_vtotal; scalar_t__ crtc_htotal; scalar_t__ crtc_clock; } ;
struct drm_vblank_crtc {struct drm_display_mode hwmode; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {struct drm_vblank_crtc* vblank; } ;


 scalar_t__ I915_READ_FW (int ) ;
 int IVB_TIMESTAMP_CTR ;
 int PIPE_FRMTMSTMP (int ) ;
 scalar_t__ div_u64 (int ,int) ;
 size_t drm_crtc_index (TYPE_2__*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int mul_u32_u32 (scalar_t__,scalar_t__) ;
 struct drm_i915_private* to_i915 (TYPE_1__*) ;

__attribute__((used)) static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct drm_vblank_crtc *vblank =
  &crtc->base.dev->vblank[drm_crtc_index(&crtc->base)];
 const struct drm_display_mode *mode = &vblank->hwmode;
 u32 vblank_start = mode->crtc_vblank_start;
 u32 vtotal = mode->crtc_vtotal;
 u32 htotal = mode->crtc_htotal;
 u32 clock = mode->crtc_clock;
 u32 scanline, scan_prev_time, scan_curr_time, scan_post_time;







 do {





  scan_prev_time = I915_READ_FW(PIPE_FRMTMSTMP(crtc->pipe));





  scan_curr_time = I915_READ_FW(IVB_TIMESTAMP_CTR);

  scan_post_time = I915_READ_FW(PIPE_FRMTMSTMP(crtc->pipe));
 } while (scan_post_time != scan_prev_time);

 scanline = div_u64(mul_u32_u32(scan_curr_time - scan_prev_time,
     clock), 1000 * htotal);
 scanline = min(scanline, vtotal - 1);
 scanline = (scanline + vblank_start) % vtotal;

 return scanline;
}
