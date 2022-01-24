#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  visible; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ active; struct drm_atomic_state* state; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ update_wm_pre; TYPE_3__ base; scalar_t__ disable_lp_wm; scalar_t__ disable_cxsr; } ;
struct TYPE_5__ {struct drm_plane* primary; struct drm_device* dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_plane_state {scalar_t__ visible; } ;
struct drm_plane {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* initial_watermarks ) (struct intel_atomic_state*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_4__ display; } ;
struct drm_device {int dummy; } ;
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 struct drm_plane_state* FUNC2 (struct drm_atomic_state*,struct drm_plane*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC4 (struct intel_crtc_state*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 struct intel_plane_state* FUNC7 (struct intel_atomic_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc*,struct intel_crtc_state*,struct intel_plane_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC14 (struct drm_i915_private*,struct intel_crtc_state*) ; 
 scalar_t__ FUNC15 (struct drm_i915_private*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC18 (struct drm_device*) ; 
 struct intel_atomic_state* FUNC19 (struct drm_atomic_state*) ; 
 struct intel_crtc* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_plane*) ; 

__attribute__((used)) static void FUNC22(struct intel_crtc_state *old_crtc_state,
				   struct intel_crtc_state *pipe_config)
{
	struct intel_crtc *crtc = FUNC20(old_crtc_state->base.crtc);
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC18(dev);
	struct drm_atomic_state *state = old_crtc_state->base.state;
	struct drm_plane *primary = crtc->base.primary;
	struct drm_plane_state *old_primary_state =
		FUNC2(state, primary);
	bool modeset = FUNC13(pipe_config);
	struct intel_atomic_state *intel_state =
		FUNC19(state);

	if (FUNC4(old_crtc_state, pipe_config))
		FUNC3(old_crtc_state);

	if (old_primary_state) {
		struct intel_plane_state *new_primary_state =
			FUNC7(intel_state,
							 FUNC21(primary));

		FUNC8(crtc, pipe_config, new_primary_state);
		/*
		 * Gen2 reports pipe underruns whenever all planes are disabled.
		 * So disable underrun reporting before all the planes get disabled.
		 */
		if (FUNC1(dev_priv, 2) && old_primary_state->visible &&
		    (modeset || !new_primary_state->base.visible))
			FUNC9(dev_priv, crtc->pipe, false);
	}

	/* Display WA 827 */
	if (!FUNC14(dev_priv, old_crtc_state) &&
	    FUNC14(dev_priv, pipe_config))
		FUNC16(dev_priv, crtc->pipe, true);

	/* Wa_2006604312:icl */
	if (!FUNC15(dev_priv, old_crtc_state) &&
	    FUNC15(dev_priv, pipe_config))
		FUNC5(dev_priv, crtc->pipe, true);

	/*
	 * Vblank time updates from the shadow to live plane control register
	 * are blocked if the memory self-refresh mode is active at that
	 * moment. So to make sure the plane gets truly disabled, disable
	 * first the self-refresh mode. The self-refresh enable bit in turn
	 * will be checked/applied by the HW only at the next frame start
	 * event which is after the vblank start event, so we need to have a
	 * wait-for-vblank between disabling the plane and the pipe.
	 */
	if (FUNC0(dev_priv) && old_crtc_state->base.active &&
	    pipe_config->disable_cxsr && FUNC10(dev_priv, false))
		FUNC12(dev_priv, crtc->pipe);

	/*
	 * IVB workaround: must disable low power watermarks for at least
	 * one frame before enabling scaling.  LP watermarks can be re-enabled
	 * when scaling is disabled.
	 *
	 * WaCxSRDisabledForSpriteScaling:ivb
	 */
	if (pipe_config->disable_lp_wm && FUNC6(dev) &&
	    old_crtc_state->base.active)
		FUNC12(dev_priv, crtc->pipe);

	/*
	 * If we're doing a modeset, we're done.  No need to do any pre-vblank
	 * watermark programming here.
	 */
	if (FUNC13(pipe_config))
		return;

	/*
	 * For platforms that support atomic watermarks, program the
	 * 'intermediate' watermarks immediately.  On pre-gen9 platforms, these
	 * will be the intermediate values that are safe for both pre- and
	 * post- vblank; when vblank happens, the 'active' values will be set
	 * to the final 'target' values and we'll do this again to get the
	 * optimal watermarks.  For gen9+ platforms, the values we program here
	 * will be the final target values which will get automatically latched
	 * at vblank time; no further programming will be necessary.
	 *
	 * If a platform hasn't been transitioned to atomic watermarks yet,
	 * we'll continue to update watermarks the old way, if flags tell
	 * us to.
	 */
	if (dev_priv->display.initial_watermarks != NULL)
		dev_priv->display.initial_watermarks(intel_state,
						     pipe_config);
	else if (pipe_config->update_wm_pre)
		FUNC11(crtc);
}