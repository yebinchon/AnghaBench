#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int mode_changed; scalar_t__ active; } ;
struct intel_crtc_state {int has_psr; int crc_enabled; scalar_t__ cpu_transcoder; TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {scalar_t__ pipe; TYPE_1__ base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;
struct drm_atomic_state {struct drm_modeset_acquire_ctx* acquire_ctx; } ;

/* Variables and functions */
 int EDEADLK ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ PIPE_A ; 
 int FUNC2 (struct intel_crtc_state*) ; 
 scalar_t__ TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 int FUNC4 (struct drm_atomic_state*) ; 
 struct drm_atomic_state* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_modeset_acquire_ctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_modeset_acquire_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_modeset_acquire_ctx*) ; 
 struct intel_crtc_state* FUNC12 (struct drm_atomic_state*,struct intel_crtc*) ; 
 struct drm_i915_private* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct intel_crtc *crtc, bool enable)
{
	struct drm_i915_private *dev_priv = FUNC13(crtc->base.dev);
	struct intel_crtc_state *pipe_config;
	struct drm_atomic_state *state;
	struct drm_modeset_acquire_ctx ctx;
	int ret;

	FUNC9(&ctx, 0);

	state = FUNC5(&dev_priv->drm);
	if (!state) {
		ret = -ENOMEM;
		goto unlock;
	}

	state->acquire_ctx = &ctx;

retry:
	pipe_config = FUNC12(state, crtc);
	if (FUNC0(pipe_config)) {
		ret = FUNC2(pipe_config);
		goto put_state;
	}

	pipe_config->base.mode_changed = pipe_config->has_psr;
	pipe_config->crc_enabled = enable;

	if (FUNC1(dev_priv) &&
	    pipe_config->base.active && crtc->pipe == PIPE_A &&
	    pipe_config->cpu_transcoder == TRANSCODER_EDP)
		pipe_config->base.mode_changed = true;

	ret = FUNC4(state);

put_state:
	if (ret == -EDEADLK) {
		FUNC6(state);
		FUNC10(&ctx);
		goto retry;
	}

	FUNC7(state);
unlock:
	FUNC3(ret, "Toggling workaround to %i returns %i\n", enable, ret);
	FUNC11(&ctx);
	FUNC8(&ctx);
}