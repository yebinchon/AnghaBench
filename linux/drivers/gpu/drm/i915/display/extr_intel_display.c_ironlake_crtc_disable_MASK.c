#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {scalar_t__ has_pch_encoder; TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCH_DPLL_SEL ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int TRANS_DP_OUTPUT_ENABLE ; 
 int TRANS_DP_PORT_SEL_MASK ; 
 int TRANS_DP_PORT_SEL_NONE ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_crtc_state*) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crtc*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc_state*) ; 
 struct drm_i915_private* FUNC17 (struct drm_device*) ; 
 struct intel_crtc* FUNC18 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC19(struct intel_crtc_state *old_crtc_state,
				  struct intel_atomic_state *state)
{
	struct drm_crtc *crtc = old_crtc_state->base.crtc;
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = FUNC17(dev);
	struct intel_crtc *intel_crtc = FUNC18(crtc);
	int pipe = intel_crtc->pipe;

	/*
	 * Sometimes spurious CPU pipe underruns happen when the
	 * pipe is already disabled, but FDI RX/TX is still enabled.
	 * Happens at least with VGA+HDMI cloning. Suppress them.
	 */
	FUNC11(dev_priv, pipe, false);
	FUNC12(dev_priv, pipe, false);

	FUNC9(intel_crtc, old_crtc_state, state);

	FUNC7(crtc);
	FUNC6(crtc);

	FUNC8(old_crtc_state);

	FUNC16(old_crtc_state);

	if (old_crtc_state->has_pch_encoder)
		FUNC14(crtc);

	FUNC10(intel_crtc, old_crtc_state, state);

	if (old_crtc_state->has_pch_encoder) {
		FUNC13(dev_priv, pipe);

		if (FUNC0(dev_priv)) {
			i915_reg_t reg;
			u32 temp;

			/* disable TRANS_DP_CTL */
			reg = FUNC5(pipe);
			temp = FUNC1(reg);
			temp &= ~(TRANS_DP_OUTPUT_ENABLE |
				  TRANS_DP_PORT_SEL_MASK);
			temp |= TRANS_DP_PORT_SEL_NONE;
			FUNC2(reg, temp);

			/* disable DPLL_SEL */
			temp = FUNC1(PCH_DPLL_SEL);
			temp &= ~(FUNC4(pipe) | FUNC3(pipe));
			FUNC2(PCH_DPLL_SEL, temp);
		}

		FUNC15(intel_crtc);
	}

	FUNC11(dev_priv, pipe, true);
	FUNC12(dev_priv, pipe, true);
}