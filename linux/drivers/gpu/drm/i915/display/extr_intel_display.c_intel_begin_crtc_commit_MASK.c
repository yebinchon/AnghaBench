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
struct TYPE_4__ {scalar_t__ color_mgmt_changed; } ;
struct intel_crtc_state {scalar_t__ update_pipe; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {TYPE_3__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* atomic_update_watermarks ) (struct intel_atomic_state*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_crtc_state*) ; 
 struct intel_crtc_state* FUNC3 (struct intel_atomic_state*,struct intel_crtc*) ; 
 struct intel_crtc_state* FUNC4 (struct intel_atomic_state*,struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc_state*,struct intel_crtc_state*) ; 
 int FUNC8 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct intel_atomic_state *state,
				    struct intel_crtc *crtc)
{
	struct drm_i915_private *dev_priv = FUNC11(crtc->base.dev);
	struct intel_crtc_state *old_crtc_state =
		FUNC4(state, crtc);
	struct intel_crtc_state *new_crtc_state =
		FUNC3(state, crtc);
	bool modeset = FUNC8(new_crtc_state);

	/* Perform vblank evasion around commit operation */
	FUNC6(new_crtc_state);

	if (modeset)
		goto out;

	if (new_crtc_state->base.color_mgmt_changed ||
	    new_crtc_state->update_pipe)
		FUNC5(new_crtc_state);

	if (new_crtc_state->update_pipe)
		FUNC7(old_crtc_state, new_crtc_state);
	else if (FUNC0(dev_priv) >= 9)
		FUNC9(new_crtc_state);

	if (FUNC0(dev_priv) >= 9 || FUNC1(dev_priv))
		FUNC2(new_crtc_state);

out:
	if (dev_priv->display.atomic_update_watermarks)
		dev_priv->display.atomic_update_watermarks(state,
							   new_crtc_state);
}