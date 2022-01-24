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
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {int /*<<< orphan*/  shared_dpll; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INTEL_OUTPUT_HDMI ; 
 int /*<<< orphan*/  INTEL_OUTPUT_SDVO ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int PIPECONF_8BPC ; 
 int PIPECONF_BPC_MASK ; 
 int PIPECONF_INTERLACED_ILK ; 
 int PIPECONF_INTERLACE_MASK ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int TRANS_CHICKEN2_TIMING_OVERRIDE ; 
 int TRANS_ENABLE ; 
 int TRANS_INTERLACED ; 
 int TRANS_INTERLACE_MASK ; 
 int TRANS_LEGACY_INTERLACED_ILK ; 
 int TRANS_PROGRESSIVE ; 
 int /*<<< orphan*/  TRANS_STATE_ENABLE ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct intel_crtc_state const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 struct drm_i915_private* FUNC14 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC15(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC14(crtc->base.dev);
	enum pipe pipe = crtc->pipe;
	i915_reg_t reg;
	u32 val, pipeconf_val;

	/* Make sure PCH DPLL is enabled */
	FUNC10(dev_priv, crtc_state->shared_dpll);

	/* FDI must be feeding us bits for PCH ports */
	FUNC9(dev_priv, pipe);
	FUNC8(dev_priv, pipe);

	if (FUNC1(dev_priv)) {
		/* Workaround: Set the timing override bit before enabling the
		 * pch transcoder. */
		reg = FUNC7(pipe);
		val = FUNC3(reg);
		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
		FUNC4(reg, val);
	}

	reg = FUNC5(pipe);
	val = FUNC3(reg);
	pipeconf_val = FUNC3(FUNC6(pipe));

	if (FUNC2(dev_priv)) {
		/*
		 * Make the BPC in transcoder be consistent with
		 * that in pipeconf reg. For HDMI we must use 8bpc
		 * here for both 8bpc and 12bpc.
		 */
		val &= ~PIPECONF_BPC_MASK;
		if (FUNC11(crtc_state, INTEL_OUTPUT_HDMI))
			val |= PIPECONF_8BPC;
		else
			val |= pipeconf_val & PIPECONF_BPC_MASK;
	}

	val &= ~TRANS_INTERLACE_MASK;
	if ((pipeconf_val & PIPECONF_INTERLACE_MASK) == PIPECONF_INTERLACED_ILK) {
		if (FUNC2(dev_priv) &&
		    FUNC11(crtc_state, INTEL_OUTPUT_SDVO))
			val |= TRANS_LEGACY_INTERLACED_ILK;
		else
			val |= TRANS_INTERLACED;
	} else {
		val |= TRANS_PROGRESSIVE;
	}

	FUNC4(reg, val | TRANS_ENABLE);
	if (FUNC12(dev_priv, reg, TRANS_STATE_ENABLE, 100))
		FUNC0("failed to enable transcoder %c\n", FUNC13(pipe));
}