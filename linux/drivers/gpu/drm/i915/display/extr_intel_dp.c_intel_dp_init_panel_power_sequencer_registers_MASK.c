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
struct pps_registers {int /*<<< orphan*/  pp_ctrl; int /*<<< orphan*/  pp_div; int /*<<< orphan*/  pp_off; int /*<<< orphan*/  pp_on; } ;
struct edp_power_seq {int t1_t3; int t8; int t9; int t10; int /*<<< orphan*/  t11_t12; } ;
struct intel_dp {struct edp_power_seq pps_delays; } ;
struct drm_i915_private {int rawclk_freq; int /*<<< orphan*/  pps_mutex; } ;
typedef  enum port { ____Placeholder_port } port ;
struct TYPE_3__ {int port; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int BXT_POWER_CYCLE_DELAY_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EDP_FORCE_VDD ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int PANEL_LIGHT_OFF_DELAY_MASK ; 
 int PANEL_LIGHT_ON_DELAY_MASK ; 
 int PANEL_PORT_SELECT_DPA ; 
 int PANEL_PORT_SELECT_DPC ; 
 int PANEL_PORT_SELECT_DPD ; 
 int FUNC9 (int) ; 
 int PANEL_POWER_CYCLE_DELAY_MASK ; 
 int PANEL_POWER_DOWN_DELAY_MASK ; 
 int PANEL_POWER_ON ; 
 int PANEL_POWER_UP_DELAY_MASK ; 
#define  PORT_A 130 
#define  PORT_C 129 
#define  PORT_D 128 
 int PP_REFERENCE_DIVIDER_MASK ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 TYPE_2__* FUNC12 (struct intel_dp*) ; 
 struct drm_i915_private* FUNC13 (struct intel_dp*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct intel_dp*,struct pps_registers*) ; 
 int FUNC16 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct intel_dp *intel_dp,
					      bool force_disable_vdd)
{
	struct drm_i915_private *dev_priv = FUNC13(intel_dp);
	u32 pp_on, pp_off, port_sel = 0;
	int div = dev_priv->rawclk_freq / 1000;
	struct pps_registers regs;
	enum port port = FUNC12(intel_dp)->base.port;
	const struct edp_power_seq *seq = &intel_dp->pps_delays;

	FUNC17(&dev_priv->pps_mutex);

	FUNC15(intel_dp, &regs);

	/*
	 * On some VLV machines the BIOS can leave the VDD
	 * enabled even on power sequencers which aren't
	 * hooked up to any port. This would mess up the
	 * power domain tracking the first time we pick
	 * one of these power sequencers for use since
	 * edp_panel_vdd_on() would notice that the VDD was
	 * already on and therefore wouldn't grab the power
	 * domain reference. Disable VDD first to avoid this.
	 * This also avoids spuriously turning the VDD on as
	 * soon as the new power sequencer gets initialized.
	 */
	if (force_disable_vdd) {
		u32 pp = FUNC16(intel_dp);

		FUNC11(pp & PANEL_POWER_ON, "Panel power already on\n");

		if (pp & EDP_FORCE_VDD)
			FUNC1("VDD already on, disabling first\n");

		pp &= ~EDP_FORCE_VDD;

		FUNC5(regs.pp_ctrl, pp);
	}

	pp_on = FUNC10(PANEL_POWER_UP_DELAY_MASK, seq->t1_t3) |
		FUNC10(PANEL_LIGHT_ON_DELAY_MASK, seq->t8);
	pp_off = FUNC10(PANEL_LIGHT_OFF_DELAY_MASK, seq->t9) |
		FUNC10(PANEL_POWER_DOWN_DELAY_MASK, seq->t10);

	/* Haswell doesn't have any port selection bits for the panel
	 * power sequencer any more. */
	if (FUNC7(dev_priv) || FUNC6(dev_priv)) {
		port_sel = FUNC9(port);
	} else if (FUNC3(dev_priv) || FUNC2(dev_priv)) {
		switch (port) {
		case PORT_A:
			port_sel = PANEL_PORT_SELECT_DPA;
			break;
		case PORT_C:
			port_sel = PANEL_PORT_SELECT_DPC;
			break;
		case PORT_D:
			port_sel = PANEL_PORT_SELECT_DPD;
			break;
		default:
			FUNC8(port);
			break;
		}
	}

	pp_on |= port_sel;

	FUNC5(regs.pp_on, pp_on);
	FUNC5(regs.pp_off, pp_off);

	/*
	 * Compute the divisor for the pp clock, simply match the Bspec formula.
	 */
	if (FUNC14(regs.pp_div)) {
		FUNC5(regs.pp_div,
			   FUNC10(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) |
			   FUNC10(PANEL_POWER_CYCLE_DELAY_MASK, FUNC0(seq->t11_t12, 1000)));
	} else {
		u32 pp_ctl;

		pp_ctl = FUNC4(regs.pp_ctrl);
		pp_ctl &= ~BXT_POWER_CYCLE_DELAY_MASK;
		pp_ctl |= FUNC10(BXT_POWER_CYCLE_DELAY_MASK, FUNC0(seq->t11_t12, 1000));
		FUNC5(regs.pp_ctrl, pp_ctl);
	}

	FUNC1("panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
		      FUNC4(regs.pp_on),
		      FUNC4(regs.pp_off),
		      FUNC14(regs.pp_div) ?
		      FUNC4(regs.pp_div) :
		      (FUNC4(regs.pp_ctrl) & BXT_POWER_CYCLE_DELAY_MASK));
}