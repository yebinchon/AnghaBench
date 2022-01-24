#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ enabled; } ;
struct TYPE_5__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int pipe_src_w; int pipe_src_h; TYPE_3__ pch_pfit; TYPE_2__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  dev; } ;
struct intel_crtc {int /*<<< orphan*/  pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC9 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(const struct intel_crtc_state *old_crtc_state,
				     const struct intel_crtc_state *new_crtc_state)
{
	struct intel_crtc *crtc = FUNC10(new_crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC9(crtc->base.dev);

	/* drm_atomic_helper_update_legacy_modeset_state might not be called. */
	crtc->base.mode = new_crtc_state->base.mode;

	/*
	 * Update pipe size and adjust fitter if needed: the reason for this is
	 * that in compute_mode_changes we check the native mode (not the pfit
	 * mode) to see if we can flip rather than do a full mode set. In the
	 * fastboot case, we'll flip, but if we don't update the pipesrc and
	 * pfit state, we'll end up with a big fb scanned out into the wrong
	 * sized surface.
	 */

	FUNC1(FUNC3(crtc->pipe),
		   ((new_crtc_state->pipe_src_w - 1) << 16) |
		   (new_crtc_state->pipe_src_h - 1));

	/* on skylake this is done by detaching scalers */
	if (FUNC2(dev_priv) >= 9) {
		FUNC7(new_crtc_state);

		if (new_crtc_state->pch_pfit.enabled)
			FUNC8(new_crtc_state);
	} else if (FUNC0(dev_priv)) {
		if (new_crtc_state->pch_pfit.enabled)
			FUNC6(new_crtc_state);
		else if (old_crtc_state->pch_pfit.enabled)
			FUNC5(old_crtc_state);
	}

	if (FUNC2(dev_priv) >= 11)
		FUNC4(crtc);
}