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
struct TYPE_5__ {scalar_t__ enabled; } ;
struct TYPE_4__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {int cpu_transcoder; int hsw_workaround_pipe; scalar_t__ has_pch_encoder; TYPE_2__ pch_pfit; int /*<<< orphan*/  fdi_m_n; scalar_t__ pixel_multiplier; scalar_t__ shared_dpll; TYPE_1__ base; } ;
struct intel_crtc {int pipe; int active; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* initial_watermarks ) (struct intel_atomic_state*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_3__ display; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_DP_MST ; 
 int INVALID_PIPE ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  M1_N1 ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int TRANSCODER_EDP ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC12 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC13 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC14 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (struct intel_crtc_state*) ; 
 scalar_t__ FUNC18 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_crtc_state*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC24 (struct intel_crtc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC26 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC27 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC28 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC29 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC30 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC31 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC32 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC33 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC34 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC35 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC36 (struct intel_atomic_state*,struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC37 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC38 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC39 (int) ; 

__attribute__((used)) static void FUNC40(struct intel_crtc_state *pipe_config,
				struct intel_atomic_state *state)
{
	struct drm_crtc *crtc = pipe_config->base.crtc;
	struct drm_i915_private *dev_priv = FUNC37(crtc->dev);
	struct intel_crtc *intel_crtc = FUNC38(crtc);
	int pipe = intel_crtc->pipe, hsw_workaround_pipe;
	enum transcoder cpu_transcoder = pipe_config->cpu_transcoder;
	bool psl_clkgate_wa;

	if (FUNC7(intel_crtc->active))
		return;

	FUNC29(intel_crtc, pipe_config, state);

	if (pipe_config->shared_dpll)
		FUNC26(pipe_config);

	FUNC28(intel_crtc, pipe_config, state);

	if (FUNC17(pipe_config))
		FUNC24(pipe_config, M1_N1);

	if (!FUNC39(cpu_transcoder))
		FUNC31(pipe_config);

	FUNC30(pipe_config);

	if (cpu_transcoder != TRANSCODER_EDP &&
	    !FUNC39(cpu_transcoder)) {
		FUNC0(FUNC6(cpu_transcoder),
			   pipe_config->pixel_multiplier - 1);
	}

	if (pipe_config->has_pch_encoder) {
		FUNC16(pipe_config,
					     &pipe_config->fdi_m_n, NULL);
	}

	if (!FUNC39(cpu_transcoder))
		FUNC11(pipe_config);

	if (FUNC1(dev_priv) >= 9 || FUNC2(dev_priv))
		FUNC9(pipe_config);

	intel_crtc->active = true;

	/* Display WA #1180: WaDisableScalarClockGating: glk, cnl */
	psl_clkgate_wa = (FUNC4(dev_priv) || FUNC3(dev_priv)) &&
			 pipe_config->pch_pfit.enabled;
	if (psl_clkgate_wa)
		FUNC10(dev_priv, pipe, true);

	if (FUNC1(dev_priv) >= 9)
		FUNC35(pipe_config);
	else
		FUNC33(pipe_config);

	/*
	 * On ILK+ LUT must be loaded before the pipe is running but with
	 * clocks enabled
	 */
	FUNC15(pipe_config);
	FUNC14(pipe_config);
	/* update DSPCNTR to configure gamma/csc for pipe bottom color */
	if (FUNC1(dev_priv) < 9)
		FUNC23(pipe_config);

	if (FUNC1(dev_priv) >= 11)
		FUNC13(intel_crtc);

	FUNC21(pipe_config);
	if (!FUNC39(cpu_transcoder))
		FUNC20(pipe_config);

	if (dev_priv->display.initial_watermarks != NULL)
		dev_priv->display.initial_watermarks(state, pipe_config);

	if (FUNC1(dev_priv) >= 11)
		FUNC12(intel_crtc);

	/* XXX: Do the pipe assertions at the right place for BXT DSI. */
	if (!FUNC39(cpu_transcoder))
		FUNC25(pipe_config);

	if (pipe_config->has_pch_encoder)
		FUNC34(state, pipe_config);

	if (FUNC18(pipe_config, INTEL_OUTPUT_DP_MST))
		FUNC22(pipe_config, true);

	FUNC8(crtc);
	FUNC19(pipe_config);

	FUNC27(intel_crtc, pipe_config, state);

	if (psl_clkgate_wa) {
		FUNC32(dev_priv, pipe);
		FUNC10(dev_priv, pipe, false);
	}

	/* If we change the relative order between pipe/planes enabling, we need
	 * to change the workaround. */
	hsw_workaround_pipe = pipe_config->hsw_workaround_pipe;
	if (FUNC5(dev_priv) && hsw_workaround_pipe != INVALID_PIPE) {
		FUNC32(dev_priv, hsw_workaround_pipe);
		FUNC32(dev_priv, hsw_workaround_pipe);
	}
}