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
struct TYPE_3__ {scalar_t__ active; struct drm_atomic_state* state; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {TYPE_1__ base; scalar_t__ update_wm_post; int /*<<< orphan*/  fb_bits; } ;
struct TYPE_4__ {struct drm_device* dev; struct drm_plane* primary; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_2__ base; } ;
struct drm_plane_state {scalar_t__ visible; } ;
struct drm_plane {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 struct drm_plane_state* FUNC0 (struct drm_atomic_state*,struct drm_plane*) ; 
 struct drm_plane_state* FUNC1 (struct drm_atomic_state*,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC3 (struct intel_crtc_state*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 struct intel_crtc_state* FUNC5 (int /*<<< orphan*/ ,struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc*) ; 
 scalar_t__ FUNC10 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*,struct intel_crtc_state*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC14 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_atomic_state*) ; 
 struct intel_crtc* FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct intel_crtc_state *old_crtc_state)
{
	struct intel_crtc *crtc = FUNC16(old_crtc_state->base.crtc);
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC14(dev);
	struct drm_atomic_state *state = old_crtc_state->base.state;
	struct intel_crtc_state *pipe_config =
		FUNC5(FUNC15(state),
						crtc);
	struct drm_plane *primary = crtc->base.primary;
	struct drm_plane_state *old_primary_state =
		FUNC1(state, primary);

	FUNC7(FUNC14(crtc->base.dev), pipe_config->fb_bits);

	if (pipe_config->update_wm_post && pipe_config->base.active)
		FUNC9(crtc);

	if (FUNC3(old_crtc_state, pipe_config))
		FUNC2(pipe_config);

	if (old_primary_state) {
		struct drm_plane_state *new_primary_state =
			FUNC0(state, primary);

		FUNC6(crtc);

		if (new_primary_state->visible &&
		    (FUNC10(pipe_config) ||
		     !old_primary_state->visible))
			FUNC8(&crtc->base, pipe_config);
	}

	if (FUNC11(dev_priv, old_crtc_state) &&
	    !FUNC11(dev_priv, pipe_config))
		FUNC13(dev_priv, crtc->pipe, false);

	if (FUNC12(dev_priv, old_crtc_state) &&
	    !FUNC12(dev_priv, pipe_config))
		FUNC4(dev_priv, crtc->pipe, false);
}