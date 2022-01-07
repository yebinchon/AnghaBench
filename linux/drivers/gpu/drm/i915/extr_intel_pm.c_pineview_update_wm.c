
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_16__ {TYPE_4__* primary; int dev; } ;
struct intel_crtc {TYPE_5__ base; TYPE_2__* config; } ;
struct drm_i915_private {int mem_freq; int fsb_freq; int is_ddr3; } ;
struct drm_framebuffer {TYPE_6__* format; } ;
struct drm_display_mode {int crtc_clock; } ;
struct cxsr_latency {int cursor_hpll_disable; int display_hpll_disable; int cursor_sr; int display_sr; } ;
struct TYPE_18__ {int fifo_size; } ;
struct TYPE_17__ {int* cpp; } ;
struct TYPE_15__ {TYPE_3__* state; } ;
struct TYPE_14__ {struct drm_framebuffer* fb; } ;
struct TYPE_12__ {struct drm_display_mode adjusted_mode; } ;
struct TYPE_13__ {TYPE_1__ base; } ;


 int CURSOR_SR ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DSPFW1 ;
 int DSPFW3 ;
 int DSPFW_CURSOR_SR_MASK ;
 int DSPFW_HPLL_CURSOR_MASK ;
 int DSPFW_HPLL_SR_MASK ;
 int DSPFW_SR_MASK ;
 int FW_WM (unsigned int,int ) ;
 int HPLL_CURSOR ;
 int HPLL_SR ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int IS_MOBILE (struct drm_i915_private*) ;
 int SR ;
 unsigned int intel_calculate_wm (int,TYPE_7__*,int ,int,int ) ;
 struct cxsr_latency* intel_get_cxsr_latency (int,int ,int ,int ) ;
 int intel_set_memory_cxsr (struct drm_i915_private*,int) ;
 TYPE_7__ pineview_cursor_hplloff_wm ;
 TYPE_7__ pineview_cursor_wm ;
 TYPE_7__ pineview_display_hplloff_wm ;
 TYPE_7__ pineview_display_wm ;
 struct intel_crtc* single_enabled_crtc (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void pineview_update_wm(struct intel_crtc *unused_crtc)
{
 struct drm_i915_private *dev_priv = to_i915(unused_crtc->base.dev);
 struct intel_crtc *crtc;
 const struct cxsr_latency *latency;
 u32 reg;
 unsigned int wm;

 latency = intel_get_cxsr_latency(!IS_MOBILE(dev_priv),
      dev_priv->is_ddr3,
      dev_priv->fsb_freq,
      dev_priv->mem_freq);
 if (!latency) {
  DRM_DEBUG_KMS("Unknown FSB/MEM found, disable CxSR\n");
  intel_set_memory_cxsr(dev_priv, 0);
  return;
 }

 crtc = single_enabled_crtc(dev_priv);
 if (crtc) {
  const struct drm_display_mode *adjusted_mode =
   &crtc->config->base.adjusted_mode;
  const struct drm_framebuffer *fb =
   crtc->base.primary->state->fb;
  int cpp = fb->format->cpp[0];
  int clock = adjusted_mode->crtc_clock;


  wm = intel_calculate_wm(clock, &pineview_display_wm,
     pineview_display_wm.fifo_size,
     cpp, latency->display_sr);
  reg = I915_READ(DSPFW1);
  reg &= ~DSPFW_SR_MASK;
  reg |= FW_WM(wm, SR);
  I915_WRITE(DSPFW1, reg);
  DRM_DEBUG_KMS("DSPFW1 register is %x\n", reg);


  wm = intel_calculate_wm(clock, &pineview_cursor_wm,
     pineview_display_wm.fifo_size,
     4, latency->cursor_sr);
  reg = I915_READ(DSPFW3);
  reg &= ~DSPFW_CURSOR_SR_MASK;
  reg |= FW_WM(wm, CURSOR_SR);
  I915_WRITE(DSPFW3, reg);


  wm = intel_calculate_wm(clock, &pineview_display_hplloff_wm,
     pineview_display_hplloff_wm.fifo_size,
     cpp, latency->display_hpll_disable);
  reg = I915_READ(DSPFW3);
  reg &= ~DSPFW_HPLL_SR_MASK;
  reg |= FW_WM(wm, HPLL_SR);
  I915_WRITE(DSPFW3, reg);


  wm = intel_calculate_wm(clock, &pineview_cursor_hplloff_wm,
     pineview_display_hplloff_wm.fifo_size,
     4, latency->cursor_hpll_disable);
  reg = I915_READ(DSPFW3);
  reg &= ~DSPFW_HPLL_CURSOR_MASK;
  reg |= FW_WM(wm, HPLL_CURSOR);
  I915_WRITE(DSPFW3, reg);
  DRM_DEBUG_KMS("DSPFW3 register is %x\n", reg);

  intel_set_memory_cxsr(dev_priv, 1);
 } else {
  intel_set_memory_cxsr(dev_priv, 0);
 }
}
