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
struct intel_crtc_state {scalar_t__ has_pch_encoder; int /*<<< orphan*/  fdi_m_n; TYPE_1__ base; } ;
struct intel_crtc {int pipe; int active; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* initial_watermarks ) (struct intel_atomic_state*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  M1_N1 ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC21 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC24 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC26 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC27 (struct drm_device*) ; 
 struct intel_crtc* FUNC28 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC29(struct intel_crtc_state *pipe_config,
				 struct intel_atomic_state *state)
{
	struct drm_crtc *crtc = pipe_config->base.crtc;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = FUNC27(dev);
	struct intel_crtc *intel_crtc = FUNC28(crtc);
	int pipe = intel_crtc->pipe;

	if (FUNC1(intel_crtc->active))
		return;

	/*
	 * Sometimes spurious CPU pipe underruns happen during FDI
	 * training, at least with VGA+HDMI cloning. Suppress them.
	 *
	 * On ILK we get an occasional spurious CPU pipe underruns
	 * between eDP port A enable and vdd enable. Also PCH port
	 * enable seems to result in the occasional CPU pipe underrun.
	 *
	 * Spurious PCH underruns also occur during PCH enabling.
	 */
	FUNC17(dev_priv, pipe, false);
	FUNC18(dev_priv, pipe, false);

	if (pipe_config->has_pch_encoder)
		FUNC16(pipe_config);

	if (FUNC9(pipe_config))
		FUNC12(pipe_config, M1_N1);

	FUNC20(pipe_config);
	FUNC19(pipe_config);

	if (pipe_config->has_pch_encoder) {
		FUNC8(pipe_config,
					     &pipe_config->fdi_m_n, NULL);
	}

	FUNC25(pipe_config);

	intel_crtc->active = true;

	FUNC15(intel_crtc, pipe_config, state);

	if (pipe_config->has_pch_encoder) {
		/* Note: FDI PLL enabling _must_ be done before we enable the
		 * cpu pipes, hence this is separate from all the other fdi/pch
		 * enabling. */
		FUNC22(pipe_config);
	} else {
		FUNC3(dev_priv, pipe);
		FUNC2(dev_priv, pipe);
	}

	FUNC24(pipe_config);

	/*
	 * On ILK+ LUT must be loaded before the pipe is running but with
	 * clocks enabled
	 */
	FUNC7(pipe_config);
	FUNC6(pipe_config);
	/* update DSPCNTR to configure gamma for pipe bottom color */
	FUNC11(pipe_config);

	if (dev_priv->display.initial_watermarks != NULL)
		dev_priv->display.initial_watermarks(state, pipe_config);
	FUNC13(pipe_config);

	if (pipe_config->has_pch_encoder)
		FUNC23(state, pipe_config);

	FUNC4(crtc);
	FUNC10(pipe_config);

	FUNC14(intel_crtc, pipe_config, state);

	if (FUNC0(dev_priv))
		FUNC5(dev, intel_crtc->pipe);

	/*
	 * Must wait for vblank to avoid spurious PCH FIFO underruns.
	 * And a second vblank wait is needed at least on ILK with
	 * some interlaced HDMI modes. Let's do the double wait always
	 * in case there are more corner cases we don't know about.
	 */
	if (pipe_config->has_pch_encoder) {
		FUNC21(dev_priv, pipe);
		FUNC21(dev_priv, pipe);
	}
	FUNC17(dev_priv, pipe, true);
	FUNC18(dev_priv, pipe, true);
}