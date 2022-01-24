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
struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  initial_watermarks; } ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_OUTPUT_DSI ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC18 (struct drm_device*) ; 
 struct intel_crtc* FUNC19 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void FUNC21(struct intel_crtc_state *old_crtc_state,
			      struct intel_atomic_state *state)
{
	struct drm_crtc *crtc = old_crtc_state->base.crtc;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = FUNC18(dev);
	struct intel_crtc *intel_crtc = FUNC19(crtc);
	int pipe = intel_crtc->pipe;

	/*
	 * On gen2 planes are double buffered but the pipe isn't, so we must
	 * wait for planes to fully turn off before disabling the pipe.
	 */
	if (FUNC1(dev_priv, 2))
		FUNC17(dev_priv, pipe);

	FUNC12(intel_crtc, old_crtc_state, state);

	FUNC6(crtc);
	FUNC4(crtc);

	FUNC11(old_crtc_state);

	FUNC9(old_crtc_state);

	FUNC13(intel_crtc, old_crtc_state, state);

	if (!FUNC10(old_crtc_state, INTEL_OUTPUT_DSI)) {
		if (FUNC0(dev_priv))
			FUNC5(dev_priv, pipe);
		else if (FUNC3(dev_priv))
			FUNC20(dev_priv, pipe);
		else
			FUNC8(old_crtc_state);
	}

	FUNC14(intel_crtc, old_crtc_state, state);

	if (!FUNC1(dev_priv, 2))
		FUNC15(dev_priv, pipe, false);

	if (!dev_priv->display.initial_watermarks)
		FUNC16(intel_crtc);

	/* clock the pipe down to 640x480@60 to potentially save power */
	if (FUNC2(dev_priv))
		FUNC7(dev_priv, pipe);
}