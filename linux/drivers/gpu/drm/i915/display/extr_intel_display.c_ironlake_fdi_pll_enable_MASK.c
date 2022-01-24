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
struct intel_crtc_state {int /*<<< orphan*/  fdi_lanes; TYPE_1__ base; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FDI_DP_PORT_WIDTH_MASK ; 
 int FDI_PCDCLK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FDI_RX_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FDI_TX_PLL_ENABLE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PIPECONF_BPC_MASK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC7 (int /*<<< orphan*/ ) ; 
 struct intel_crtc* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(const struct intel_crtc_state *crtc_state)
{
	struct intel_crtc *intel_crtc = FUNC8(crtc_state->base.crtc);
	struct drm_i915_private *dev_priv = FUNC7(intel_crtc->base.dev);
	int pipe = intel_crtc->pipe;
	i915_reg_t reg;
	u32 temp;

	/* enable PCH FDI RX PLL, wait warmup plus DMI latency */
	reg = FUNC1(pipe);
	temp = FUNC3(reg);
	temp &= ~(FDI_DP_PORT_WIDTH_MASK | (0x7 << 16));
	temp |= FUNC0(crtc_state->fdi_lanes);
	temp |= (FUNC3(FUNC5(pipe)) & PIPECONF_BPC_MASK) << 11;
	FUNC4(reg, temp | FDI_RX_PLL_ENABLE);

	FUNC6(reg);
	FUNC9(200);

	/* Switch from Rawclk to PCDclk */
	temp = FUNC3(reg);
	FUNC4(reg, temp | FDI_PCDCLK);

	FUNC6(reg);
	FUNC9(200);

	/* Enable CPU FDI TX PLL, always on for Ironlake */
	reg = FUNC2(pipe);
	temp = FUNC3(reg);
	if ((temp & FDI_TX_PLL_ENABLE) == 0) {
		FUNC4(reg, temp | FDI_TX_PLL_ENABLE);

		FUNC6(reg);
		FUNC9(100);
	}
}