
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int visible; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ active; struct drm_atomic_state* state; int crtc; } ;
struct intel_crtc_state {scalar_t__ update_wm_pre; TYPE_3__ base; scalar_t__ disable_lp_wm; scalar_t__ disable_cxsr; } ;
struct TYPE_5__ {struct drm_plane* primary; struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_plane_state {scalar_t__ visible; } ;
struct drm_plane {int dummy; } ;
struct TYPE_8__ {int (* initial_watermarks ) (struct intel_atomic_state*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_4__ display; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;


 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 struct drm_plane_state* drm_atomic_get_old_plane_state (struct drm_atomic_state*,struct drm_plane*) ;
 int hsw_disable_ips (struct intel_crtc_state*) ;
 scalar_t__ hsw_pre_update_disable_ips (struct intel_crtc_state*,struct intel_crtc_state*) ;
 int icl_wa_scalerclkgating (struct drm_i915_private*,int ,int) ;
 scalar_t__ ilk_disable_lp_wm (struct drm_device*) ;
 struct intel_plane_state* intel_atomic_get_new_plane_state (struct intel_atomic_state*,int ) ;
 int intel_fbc_pre_update (struct intel_crtc*,struct intel_crtc_state*,struct intel_plane_state*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 scalar_t__ intel_set_memory_cxsr (struct drm_i915_private*,int) ;
 int intel_update_watermarks (struct intel_crtc*) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int ) ;
 int needs_modeset (struct intel_crtc_state*) ;
 scalar_t__ needs_nv12_wa (struct drm_i915_private*,struct intel_crtc_state*) ;
 scalar_t__ needs_scalerclk_wa (struct drm_i915_private*,struct intel_crtc_state*) ;
 int skl_wa_827 (struct drm_i915_private*,int ,int) ;
 int stub1 (struct intel_atomic_state*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_atomic_state* to_intel_atomic_state (struct drm_atomic_state*) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static void intel_pre_plane_update(struct intel_crtc_state *old_crtc_state,
       struct intel_crtc_state *pipe_config)
{
 struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->base.crtc);
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct drm_atomic_state *state = old_crtc_state->base.state;
 struct drm_plane *primary = crtc->base.primary;
 struct drm_plane_state *old_primary_state =
  drm_atomic_get_old_plane_state(state, primary);
 bool modeset = needs_modeset(pipe_config);
 struct intel_atomic_state *intel_state =
  to_intel_atomic_state(state);

 if (hsw_pre_update_disable_ips(old_crtc_state, pipe_config))
  hsw_disable_ips(old_crtc_state);

 if (old_primary_state) {
  struct intel_plane_state *new_primary_state =
   intel_atomic_get_new_plane_state(intel_state,
        to_intel_plane(primary));

  intel_fbc_pre_update(crtc, pipe_config, new_primary_state);




  if (IS_GEN(dev_priv, 2) && old_primary_state->visible &&
      (modeset || !new_primary_state->base.visible))
   intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, 0);
 }


 if (!needs_nv12_wa(dev_priv, old_crtc_state) &&
     needs_nv12_wa(dev_priv, pipe_config))
  skl_wa_827(dev_priv, crtc->pipe, 1);


 if (!needs_scalerclk_wa(dev_priv, old_crtc_state) &&
     needs_scalerclk_wa(dev_priv, pipe_config))
  icl_wa_scalerclkgating(dev_priv, crtc->pipe, 1);
 if (HAS_GMCH(dev_priv) && old_crtc_state->base.active &&
     pipe_config->disable_cxsr && intel_set_memory_cxsr(dev_priv, 0))
  intel_wait_for_vblank(dev_priv, crtc->pipe);
 if (pipe_config->disable_lp_wm && ilk_disable_lp_wm(dev) &&
     old_crtc_state->base.active)
  intel_wait_for_vblank(dev_priv, crtc->pipe);





 if (needs_modeset(pipe_config))
  return;
 if (dev_priv->display.initial_watermarks != ((void*)0))
  dev_priv->display.initial_watermarks(intel_state,
           pipe_config);
 else if (pipe_config->update_wm_pre)
  intel_update_watermarks(crtc);
}
