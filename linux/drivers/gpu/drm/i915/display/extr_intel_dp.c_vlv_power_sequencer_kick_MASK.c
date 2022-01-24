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
typedef  int u32 ;
struct intel_dp {int pps_pipe; int /*<<< orphan*/  output_reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;
typedef  enum dpio_channel { ____Placeholder_dpio_channel } dpio_channel ;
struct TYPE_6__ {int /*<<< orphan*/  dpll; } ;
struct TYPE_5__ {int /*<<< orphan*/  dpll; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int DPLL_VCO_ENABLE ; 
 int DP_DETECTED ; 
 int DP_LINK_TRAIN_PAT_1 ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int DP_PORT_EN ; 
 int FUNC4 (int) ; 
 int DP_PRE_EMPHASIS_0 ; 
 int DP_VOLTAGE_0_4 ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* chv_dpll ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,int,int) ; 
 struct intel_digital_port* FUNC13 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC14 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_2__* vlv_dpll ; 
 int /*<<< orphan*/  FUNC17 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC18 (struct drm_i915_private*,int,int /*<<< orphan*/ *) ; 
 int FUNC19 (int) ; 

__attribute__((used)) static void
FUNC20(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC14(intel_dp);
	struct intel_digital_port *intel_dig_port = FUNC13(intel_dp);
	enum pipe pipe = intel_dp->pps_pipe;
	bool pll_enabled, release_cl_override = false;
	enum dpio_phy phy = FUNC0(pipe);
	enum dpio_channel ch = FUNC19(pipe);
	u32 DP;

	if (FUNC11(FUNC7(intel_dp->output_reg) & DP_PORT_EN,
		 "skipping pipe %c power sequencer kick due to port %c being active\n",
		 FUNC15(pipe), FUNC16(intel_dig_port->base.port)))
		return;

	FUNC5("kicking pipe %c power sequencer for port %c\n",
		      FUNC15(pipe), FUNC16(intel_dig_port->base.port));

	/* Preserve the BIOS-computed detected bit. This is
	 * supposed to be read-only.
	 */
	DP = FUNC7(intel_dp->output_reg) & DP_DETECTED;
	DP |= DP_VOLTAGE_0_4 | DP_PRE_EMPHASIS_0;
	DP |= FUNC4(1);
	DP |= DP_LINK_TRAIN_PAT_1;

	if (FUNC9(dev_priv))
		DP |= FUNC3(pipe);
	else
		DP |= FUNC2(pipe);

	pll_enabled = FUNC7(FUNC1(pipe)) & DPLL_VCO_ENABLE;

	/*
	 * The DPLL for the pipe must be enabled for this to work.
	 * So enable temporarily it if it's not already enabled.
	 */
	if (!pll_enabled) {
		release_cl_override = FUNC9(dev_priv) &&
			!FUNC12(dev_priv, phy, ch, true);

		if (FUNC18(dev_priv, pipe, FUNC9(dev_priv) ?
				     &chv_dpll[0].dpll : &vlv_dpll[0].dpll)) {
			FUNC6("Failed to force on pll for pipe %c!\n",
				  FUNC15(pipe));
			return;
		}
	}

	/*
	 * Similar magic as in intel_dp_enable_port().
	 * We _must_ do this port enable + disable trick
	 * to make this power sequencer lock onto the port.
	 * Otherwise even VDD force bit won't work.
	 */
	FUNC8(intel_dp->output_reg, DP);
	FUNC10(intel_dp->output_reg);

	FUNC8(intel_dp->output_reg, DP | DP_PORT_EN);
	FUNC10(intel_dp->output_reg);

	FUNC8(intel_dp->output_reg, DP & ~DP_PORT_EN);
	FUNC10(intel_dp->output_reg);

	if (!pll_enabled) {
		FUNC17(dev_priv, pipe);

		if (release_cl_override)
			FUNC12(dev_priv, phy, ch, false);
	}
}