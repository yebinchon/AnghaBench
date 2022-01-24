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
struct i915_power_well_regs {int /*<<< orphan*/  driver; } ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum phy { ____Placeholder_phy } phy ;
struct TYPE_3__ {int idx; struct i915_power_well_regs* regs; } ;
struct TYPE_4__ {TYPE_1__ hsw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ICL_AUX_ANAOVRD1_ENABLE ; 
 int ICL_AUX_ANAOVRD1_LDO_BYPASS ; 
 int FUNC4 (int) ; 
 int ICL_LANE_ENABLE_AUX ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int ICL_PW_CTL_IDX_AUX_A ; 
 int ICL_PW_CTL_IDX_AUX_B ; 
 int ICL_PW_CTL_IDX_AUX_C ; 
 int FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*,struct i915_power_well*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int) ; 

__attribute__((used)) static void
FUNC11(struct drm_i915_private *dev_priv,
				    struct i915_power_well *power_well)
{
	const struct i915_power_well_regs *regs = power_well->desc->hsw.regs;
	int pw_idx = power_well->desc->hsw.idx;
	enum phy phy = FUNC4(pw_idx);
	u32 val;
	int wa_idx_max;

	val = FUNC1(regs->driver);
	FUNC2(regs->driver, val | FUNC0(pw_idx));

	if (FUNC6(dev_priv) < 12) {
		val = FUNC1(FUNC5(phy));
		FUNC2(FUNC5(phy), val | ICL_LANE_ENABLE_AUX);
	}

	FUNC9(dev_priv, power_well);

	/* Display WA #1178: icl, tgl */
	if (FUNC8(dev_priv))
		wa_idx_max = ICL_PW_CTL_IDX_AUX_C;
	else
		wa_idx_max = ICL_PW_CTL_IDX_AUX_B;

	if (!FUNC7(dev_priv) &&
	    pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <= wa_idx_max &&
	    !FUNC10(dev_priv, (enum port)phy)) {
		val = FUNC1(FUNC3(pw_idx));
		val |= ICL_AUX_ANAOVRD1_ENABLE | ICL_AUX_ANAOVRD1_LDO_BYPASS;
		FUNC2(FUNC3(pw_idx), val);
	}
}