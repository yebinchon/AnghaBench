#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pps_registers {int /*<<< orphan*/  pp_div; int /*<<< orphan*/  pp_off; int /*<<< orphan*/  pp_on; int /*<<< orphan*/  pp_ctrl; } ;
struct intel_dp {int dummy; } ;
struct edp_power_seq {int t1_t3; int t8; int t9; int t10; int t11_t12; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_POWER_CYCLE_DELAY_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PANEL_LIGHT_OFF_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_LIGHT_ON_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_POWER_CYCLE_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_POWER_DOWN_DELAY_MASK ; 
 int /*<<< orphan*/  PANEL_POWER_UP_DELAY_MASK ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC4 (struct intel_dp*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_dp*,struct pps_registers*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 

__attribute__((used)) static void
FUNC8(struct intel_dp *intel_dp, struct edp_power_seq *seq)
{
	struct drm_i915_private *dev_priv = FUNC4(intel_dp);
	u32 pp_on, pp_off, pp_ctl;
	struct pps_registers regs;

	FUNC6(intel_dp, &regs);

	pp_ctl = FUNC7(intel_dp);

	/* Ensure PPS is unlocked */
	if (!FUNC0(dev_priv))
		FUNC2(regs.pp_ctrl, pp_ctl);

	pp_on = FUNC1(regs.pp_on);
	pp_off = FUNC1(regs.pp_off);

	/* Pull timing values out of registers */
	seq->t1_t3 = FUNC3(PANEL_POWER_UP_DELAY_MASK, pp_on);
	seq->t8 = FUNC3(PANEL_LIGHT_ON_DELAY_MASK, pp_on);
	seq->t9 = FUNC3(PANEL_LIGHT_OFF_DELAY_MASK, pp_off);
	seq->t10 = FUNC3(PANEL_POWER_DOWN_DELAY_MASK, pp_off);

	if (FUNC5(regs.pp_div)) {
		u32 pp_div;

		pp_div = FUNC1(regs.pp_div);

		seq->t11_t12 = FUNC3(PANEL_POWER_CYCLE_DELAY_MASK, pp_div) * 1000;
	} else {
		seq->t11_t12 = FUNC3(BXT_POWER_CYCLE_DELAY_MASK, pp_ctl) * 1000;
	}
}