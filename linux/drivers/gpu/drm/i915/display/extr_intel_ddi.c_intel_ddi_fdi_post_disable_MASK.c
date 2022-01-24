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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;

/* Variables and functions */
 int FDI_PCDCLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FDI_RX_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FDI_RX_PLL_ENABLE ; 
 int FDI_RX_PWRDN_LANE0_MASK ; 
 int FUNC2 (int) ; 
 int FDI_RX_PWRDN_LANE1_MASK ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  FUNC6 (struct intel_encoder*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_encoder*,struct intel_crtc_state const*) ; 
 struct drm_i915_private* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct intel_encoder *encoder,
				const struct intel_crtc_state *old_crtc_state,
				const struct drm_connector_state *old_conn_state)
{
	struct drm_i915_private *dev_priv = FUNC8(encoder->base.dev);
	u32 val;

	/*
	 * Bspec lists this as both step 13 (before DDI_BUF_CTL disable)
	 * and step 18 (after clearing PORT_CLK_SEL). Based on a BUN,
	 * step 13 is the correct place for it. Step 18 is where it was
	 * originally before the BUN.
	 */
	val = FUNC4(FUNC0(PIPE_A));
	val &= ~FDI_RX_ENABLE;
	FUNC5(FUNC0(PIPE_A), val);

	FUNC7(encoder, old_crtc_state);
	FUNC6(encoder);

	val = FUNC4(FUNC1(PIPE_A));
	val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
	val |= FUNC3(2) | FUNC2(2);
	FUNC5(FUNC1(PIPE_A), val);

	val = FUNC4(FUNC0(PIPE_A));
	val &= ~FDI_PCDCLK;
	FUNC5(FUNC0(PIPE_A), val);

	val = FUNC4(FUNC0(PIPE_A));
	val &= ~FDI_RX_PLL_ENABLE;
	FUNC5(FUNC0(PIPE_A), val);
}