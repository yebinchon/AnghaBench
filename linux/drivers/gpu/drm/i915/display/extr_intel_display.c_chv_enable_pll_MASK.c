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
struct TYPE_3__ {int dpll; int /*<<< orphan*/  dpll_md; } ;
struct intel_crtc_state {TYPE_1__ dpll_hw_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int /*<<< orphan*/ * chv_dpll_md; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  CBR4_VLV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int DPLL_VCO_ENABLE ; 
 int DPLL_VGA_MODE_DIS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PIPE_A ; 
 int PIPE_B ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_crtc*,struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,int) ; 
 struct drm_i915_private* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct intel_crtc *crtc,
			   const struct intel_crtc_state *pipe_config)
{
	struct drm_i915_private *dev_priv = FUNC10(crtc->base.dev);
	enum pipe pipe = crtc->pipe;

	FUNC9(dev_priv, pipe);

	/* PLL is protected by panel, make sure we can write it */
	FUNC8(dev_priv, pipe);

	if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
		FUNC7(crtc, pipe_config);

	if (pipe != PIPE_A) {
		/*
		 * WaPixelRepeatModeFixForC0:chv
		 *
		 * DPLLCMD is AWOL. Use chicken bits to propagate
		 * the value from DPLLBMD to either pipe B or C.
		 */
		FUNC4(CBR4_VLV, FUNC0(pipe));
		FUNC4(FUNC2(PIPE_B), pipe_config->dpll_hw_state.dpll_md);
		FUNC4(CBR4_VLV, 0);
		dev_priv->chv_dpll_md[pipe] = pipe_config->dpll_hw_state.dpll_md;

		/*
		 * DPLLB VGA mode also seems to cause problems.
		 * We should always have it disabled.
		 */
		FUNC6((FUNC3(FUNC1(PIPE_B)) & DPLL_VGA_MODE_DIS) == 0);
	} else {
		FUNC4(FUNC2(pipe), pipe_config->dpll_hw_state.dpll_md);
		FUNC5(FUNC2(pipe));
	}
}