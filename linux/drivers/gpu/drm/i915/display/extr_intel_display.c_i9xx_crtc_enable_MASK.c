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
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  M1_N1 ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_crtc*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC9 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC21 (struct drm_device*) ; 
 struct intel_crtc* FUNC22 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC23(struct intel_crtc_state *pipe_config,
			     struct intel_atomic_state *state)
{
	struct drm_crtc *crtc = pipe_config->base.crtc;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = FUNC21(dev);
	struct intel_crtc *intel_crtc = FUNC22(crtc);
	enum pipe pipe = intel_crtc->pipe;

	if (FUNC1(intel_crtc->active))
		return;

	FUNC6(pipe_config);

	if (FUNC9(pipe_config))
		FUNC12(pipe_config, M1_N1);

	FUNC18(pipe_config);
	FUNC17(pipe_config);

	FUNC5(pipe_config);

	intel_crtc->active = true;

	if (!FUNC0(dev_priv, 2))
		FUNC16(dev_priv, pipe, true);

	FUNC15(intel_crtc, pipe_config, state);

	FUNC3(intel_crtc, pipe_config);

	FUNC4(pipe_config);

	FUNC8(pipe_config);
	FUNC7(pipe_config);
	/* update DSPCNTR to configure gamma for pipe bottom color */
	FUNC11(pipe_config);

	if (dev_priv->display.initial_watermarks != NULL)
		dev_priv->display.initial_watermarks(state,
						     pipe_config);
	else
		FUNC19(intel_crtc);
	FUNC13(pipe_config);

	FUNC2(crtc);
	FUNC10(pipe_config);

	FUNC14(intel_crtc, pipe_config, state);
}