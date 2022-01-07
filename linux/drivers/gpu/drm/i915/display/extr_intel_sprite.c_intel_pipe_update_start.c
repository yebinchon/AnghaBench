
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wait_queue_head_t ;
typedef int u32 ;
struct drm_display_mode {int crtc_vblank_start; int flags; } ;
struct TYPE_6__ {struct drm_display_mode adjusted_mode; int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_7__ {int min_vbl; int max_vbl; int scanline_start; int start_vbl_count; int start_vbl_time; } ;
struct TYPE_8__ {int dev; } ;
struct intel_crtc {TYPE_2__ debug; TYPE_3__ base; int pipe; } ;
struct drm_i915_private {int dummy; } ;


 int DEFINE_WAIT (int ) ;
 int DIV_ROUND_UP (int,int) ;
 int DRM_ERROR (char*,int ) ;
 int DRM_MODE_FLAG_INTERLACE ;
 int INTEL_OUTPUT_DSI ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int TASK_UNINTERRUPTIBLE ;
 int VBLANK_EVASION_TIME_US ;
 scalar_t__ WARN_ON (int ) ;
 int drm_crtc_vblank_get (TYPE_3__*) ;
 int drm_crtc_vblank_put (TYPE_3__*) ;
 int * drm_crtc_vblank_waitqueue (TYPE_3__*) ;
 int finish_wait (int *,int *) ;
 int intel_crtc_get_vblank_counter (struct intel_crtc*) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_get_crtc_scanline (struct intel_crtc*) ;
 scalar_t__ intel_psr_wait_for_idle (struct intel_crtc_state const*,int *) ;
 int intel_usecs_to_scanlines (struct drm_display_mode const*,int ) ;
 int ktime_get () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 long msecs_to_jiffies_timeout (int) ;
 int pipe_name (int ) ;
 int prepare_to_wait (int *,int *,int ) ;
 long schedule_timeout (long) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int trace_i915_pipe_update_start (struct intel_crtc*) ;
 int trace_i915_pipe_update_vblank_evaded (struct intel_crtc*) ;
 int wait ;

void intel_pipe_update_start(const struct intel_crtc_state *new_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 const struct drm_display_mode *adjusted_mode = &new_crtc_state->base.adjusted_mode;
 long timeout = msecs_to_jiffies_timeout(1);
 int scanline, min, max, vblank_start;
 wait_queue_head_t *wq = drm_crtc_vblank_waitqueue(&crtc->base);
 bool need_vlv_dsi_wa = (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) &&
  intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI);
 DEFINE_WAIT(wait);
 u32 psr_status;

 vblank_start = adjusted_mode->crtc_vblank_start;
 if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
  vblank_start = DIV_ROUND_UP(vblank_start, 2);


 min = vblank_start - intel_usecs_to_scanlines(adjusted_mode,
            VBLANK_EVASION_TIME_US);
 max = vblank_start - 1;

 if (min <= 0 || max <= 0)
  goto irq_disable;

 if (WARN_ON(drm_crtc_vblank_get(&crtc->base)))
  goto irq_disable;






 if (intel_psr_wait_for_idle(new_crtc_state, &psr_status))
  DRM_ERROR("PSR idle timed out 0x%x, atomic update may fail\n",
     psr_status);

 local_irq_disable();

 crtc->debug.min_vbl = min;
 crtc->debug.max_vbl = max;
 trace_i915_pipe_update_start(crtc);

 for (;;) {





  prepare_to_wait(wq, &wait, TASK_UNINTERRUPTIBLE);

  scanline = intel_get_crtc_scanline(crtc);
  if (scanline < min || scanline > max)
   break;

  if (!timeout) {
   DRM_ERROR("Potential atomic update failure on pipe %c\n",
      pipe_name(crtc->pipe));
   break;
  }

  local_irq_enable();

  timeout = schedule_timeout(timeout);

  local_irq_disable();
 }

 finish_wait(wq, &wait);

 drm_crtc_vblank_put(&crtc->base);
 while (need_vlv_dsi_wa && scanline == vblank_start)
  scanline = intel_get_crtc_scanline(crtc);

 crtc->debug.scanline_start = scanline;
 crtc->debug.start_vbl_time = ktime_get();
 crtc->debug.start_vbl_count = intel_crtc_get_vblank_counter(crtc);

 trace_i915_pipe_update_vblank_evaded(crtc);
 return;

irq_disable:
 local_irq_disable();
}
