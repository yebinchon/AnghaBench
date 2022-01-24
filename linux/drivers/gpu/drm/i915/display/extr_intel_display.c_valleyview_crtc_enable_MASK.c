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
struct intel_crtc {int pipe; int active; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* initial_watermarks ) (struct intel_atomic_state*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHV_BLEND_LEGACY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  M1_N1 ; 
 int PIPE_B ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC12 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC24 (struct drm_device*) ; 
 struct intel_crtc* FUNC25 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC26 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC27 (struct intel_crtc*,struct intel_crtc_state*) ; 

__attribute__((used)) static void FUNC28(struct intel_crtc_state *pipe_config,
				   struct intel_atomic_state *state)
{
	struct drm_crtc *crtc = pipe_config->base.crtc;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = FUNC24(dev);
	struct intel_crtc *intel_crtc = FUNC25(crtc);
	int pipe = intel_crtc->pipe;

	if (FUNC4(intel_crtc->active))
		return;

	if (FUNC12(pipe_config))
		FUNC15(pipe_config, M1_N1);

	FUNC22(pipe_config);
	FUNC21(pipe_config);

	if (FUNC3(dev_priv) && pipe == PIPE_B) {
		FUNC2(FUNC0(pipe), CHV_BLEND_LEGACY);
		FUNC2(FUNC1(pipe), 0);
	}

	FUNC9(pipe_config);

	intel_crtc->active = true;

	FUNC20(dev_priv, pipe, true);

	FUNC19(intel_crtc, pipe_config, state);

	if (FUNC3(dev_priv)) {
		FUNC7(intel_crtc, pipe_config);
		FUNC6(intel_crtc, pipe_config);
	} else {
		FUNC27(intel_crtc, pipe_config);
		FUNC26(intel_crtc, pipe_config);
	}

	FUNC18(intel_crtc, pipe_config, state);

	FUNC8(pipe_config);

	FUNC11(pipe_config);
	FUNC10(pipe_config);
	/* update DSPCNTR to configure gamma for pipe bottom color */
	FUNC14(pipe_config);

	dev_priv->display.initial_watermarks(state, pipe_config);
	FUNC16(pipe_config);

	FUNC5(crtc);
	FUNC13(pipe_config);

	FUNC17(intel_crtc, pipe_config, state);
}