
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mode_changed; scalar_t__ active; } ;
struct intel_crtc_state {int has_psr; int crc_enabled; scalar_t__ cpu_transcoder; TYPE_2__ base; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {scalar_t__ pipe; TYPE_1__ base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_i915_private {int drm; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;


 int EDEADLK ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct intel_crtc_state*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 scalar_t__ PIPE_A ;
 int PTR_ERR (struct intel_crtc_state*) ;
 scalar_t__ TRANSCODER_EDP ;
 int WARN (int,char*,int,int) ;
 int drm_atomic_commit (struct drm_atomic_state*) ;
 struct drm_atomic_state* drm_atomic_state_alloc (int *) ;
 int drm_atomic_state_clear (struct drm_atomic_state*) ;
 int drm_atomic_state_put (struct drm_atomic_state*) ;
 int drm_modeset_acquire_fini (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_acquire_init (struct drm_modeset_acquire_ctx*,int ) ;
 int drm_modeset_backoff (struct drm_modeset_acquire_ctx*) ;
 int drm_modeset_drop_locks (struct drm_modeset_acquire_ctx*) ;
 struct intel_crtc_state* intel_atomic_get_crtc_state (struct drm_atomic_state*,struct intel_crtc*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
intel_crtc_crc_setup_workarounds(struct intel_crtc *crtc, bool enable)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_crtc_state *pipe_config;
 struct drm_atomic_state *state;
 struct drm_modeset_acquire_ctx ctx;
 int ret;

 drm_modeset_acquire_init(&ctx, 0);

 state = drm_atomic_state_alloc(&dev_priv->drm);
 if (!state) {
  ret = -ENOMEM;
  goto unlock;
 }

 state->acquire_ctx = &ctx;

retry:
 pipe_config = intel_atomic_get_crtc_state(state, crtc);
 if (IS_ERR(pipe_config)) {
  ret = PTR_ERR(pipe_config);
  goto put_state;
 }

 pipe_config->base.mode_changed = pipe_config->has_psr;
 pipe_config->crc_enabled = enable;

 if (IS_HASWELL(dev_priv) &&
     pipe_config->base.active && crtc->pipe == PIPE_A &&
     pipe_config->cpu_transcoder == TRANSCODER_EDP)
  pipe_config->base.mode_changed = 1;

 ret = drm_atomic_commit(state);

put_state:
 if (ret == -EDEADLK) {
  drm_atomic_state_clear(state);
  drm_modeset_backoff(&ctx);
  goto retry;
 }

 drm_atomic_state_put(state);
unlock:
 WARN(ret, "Toggling workaround to %i returns %i\n", enable, ret);
 drm_modeset_drop_locks(&ctx);
 drm_modeset_acquire_fini(&ctx);
}
