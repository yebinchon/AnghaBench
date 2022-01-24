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
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int idx; } ;
struct TYPE_4__ {TYPE_1__ vlv; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  PUNIT_REG_PWRGT_CTRL ; 
 int /*<<< orphan*/  PUNIT_REG_PWRGT_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int FUNC6 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct drm_i915_private *dev_priv,
				   struct i915_power_well *power_well)
{
	int pw_idx = power_well->desc->vlv.idx;
	bool enabled = false;
	u32 mask;
	u32 state;
	u32 ctrl;

	mask = FUNC0(pw_idx);
	ctrl = FUNC2(pw_idx);

	FUNC4(dev_priv);

	state = FUNC6(dev_priv, PUNIT_REG_PWRGT_STATUS) & mask;
	/*
	 * We only ever set the power-on and power-gate states, anything
	 * else is unexpected.
	 */
	FUNC3(state != FUNC2(pw_idx) &&
		state != FUNC1(pw_idx));
	if (state == ctrl)
		enabled = true;

	/*
	 * A transient state at this point would mean some unexpected party
	 * is poking at the power controls too.
	 */
	ctrl = FUNC6(dev_priv, PUNIT_REG_PWRGT_CTRL) & mask;
	FUNC3(ctrl != state);

	FUNC5(dev_priv);

	return enabled;
}