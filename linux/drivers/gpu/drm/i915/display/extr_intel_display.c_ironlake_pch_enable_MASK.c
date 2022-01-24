#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct drm_display_mode {int flags; } ;
struct TYPE_7__ {struct drm_display_mode adjusted_mode; int /*<<< orphan*/  crtc; } ;
struct intel_crtc_state {scalar_t__ shared_dpll; TYPE_3__ base; } ;
struct TYPE_5__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* fdi_link_train ) (struct intel_crtc*,struct intel_crtc_state const*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_8__ {int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_ID_PCH_PLL_B ; 
 int DRM_MODE_FLAG_PHSYNC ; 
 int DRM_MODE_FLAG_PVSYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PCH_DPLL_SEL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PIPECONF_BPC_MASK ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int PORT_B ; 
 int PORT_D ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int TRANS_DP_BPC_MASK ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int TRANS_DP_HSYNC_ACTIVE_HIGH ; 
 int TRANS_DP_OUTPUT_ENABLE ; 
 int FUNC10 (int) ; 
 int TRANS_DP_PORT_SEL_MASK ; 
 int TRANS_DP_SYNC_MASK ; 
 int TRANS_DP_VSYNC_ACTIVE_HIGH ; 
 int TU_SIZE_MASK ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC14 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC16 (struct intel_crtc*) ; 
 TYPE_4__* FUNC17 (struct intel_atomic_state const*,struct intel_crtc_state const*) ; 
 scalar_t__ FUNC18 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC20 (struct intel_crtc_state const*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct intel_crtc_state const*) ; 
 int /*<<< orphan*/  FUNC22 (struct intel_crtc*,struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC23 (struct drm_device*) ; 
 struct intel_crtc* FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC25(const struct intel_atomic_state *state,
				const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *crtc = FUNC24(crtc_state->base.crtc);
	struct drm_device *dev = crtc->base.dev;
	struct drm_i915_private *dev_priv = FUNC23(dev);
	int pipe = crtc->pipe;
	u32 temp;

	FUNC13(dev_priv, pipe);

	if (FUNC4(dev_priv))
		FUNC21(crtc_state);

	/* Write the TU size bits before fdi link training, so that error
	 * detection works. */
	FUNC3(FUNC0(pipe),
		   FUNC2(FUNC6(pipe)) & TU_SIZE_MASK);

	/* For PCH output, training FDI link */
	dev_priv->display.fdi_link_train(crtc, crtc_state);

	/* We need to program the right clock selection before writing the pixel
	 * mutliplier into the DPLL. */
	if (FUNC1(dev_priv)) {
		u32 sel;

		temp = FUNC2(PCH_DPLL_SEL);
		temp |= FUNC8(pipe);
		sel = FUNC7(pipe);
		if (crtc_state->shared_dpll ==
		    FUNC18(dev_priv, DPLL_ID_PCH_PLL_B))
			temp |= sel;
		else
			temp &= ~sel;
		FUNC3(PCH_DPLL_SEL, temp);
	}

	/* XXX: pch pll's can be enabled any time before we enable the PCH
	 * transcoder, and we actually should do this to not upset any PCH
	 * transcoder that already use the clock when we share it.
	 *
	 * Note that enable_shared_dpll tries to do the right thing, but
	 * get_shared_dpll unconditionally resets the pll - we need that to have
	 * the right LVDS enable sequence. */
	FUNC15(crtc_state);

	/* set transcoder timing, panel must allow it */
	FUNC12(dev_priv, pipe);
	FUNC20(crtc_state, pipe);

	FUNC16(crtc);

	/* For PCH DP, enable TRANS_DP_CTL */
	if (FUNC1(dev_priv) &&
	    FUNC14(crtc_state)) {
		const struct drm_display_mode *adjusted_mode =
			&crtc_state->base.adjusted_mode;
		u32 bpc = (FUNC2(FUNC5(pipe)) & PIPECONF_BPC_MASK) >> 5;
		i915_reg_t reg = FUNC9(pipe);
		enum port port;

		temp = FUNC2(reg);
		temp &= ~(TRANS_DP_PORT_SEL_MASK |
			  TRANS_DP_SYNC_MASK |
			  TRANS_DP_BPC_MASK);
		temp |= TRANS_DP_OUTPUT_ENABLE;
		temp |= bpc << 9; /* same format but at 11:9 */

		if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
			temp |= TRANS_DP_HSYNC_ACTIVE_HIGH;
		if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
			temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;

		port = FUNC17(state, crtc_state)->port;
		FUNC11(port < PORT_B || port > PORT_D);
		temp |= FUNC10(port);

		FUNC3(reg, temp);
	}

	FUNC19(crtc_state);
}