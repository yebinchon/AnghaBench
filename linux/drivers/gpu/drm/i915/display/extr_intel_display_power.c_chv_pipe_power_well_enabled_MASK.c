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
typedef  int u32 ;
struct i915_power_well {int dummy; } ;
struct drm_i915_private {int dummy; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int PIPE_A ; 
 int /*<<< orphan*/  PUNIT_REG_DSPSSPM ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(struct drm_i915_private *dev_priv,
					struct i915_power_well *power_well)
{
	enum pipe pipe = PIPE_A;
	bool enabled;
	u32 state, ctrl;

	FUNC5(dev_priv);

	state = FUNC7(dev_priv, PUNIT_REG_DSPSSPM) & FUNC1(pipe);
	/*
	 * We only ever set the power-on and power-gate states, anything
	 * else is unexpected.
	 */
	FUNC4(state != FUNC3(pipe) && state != FUNC2(pipe));
	enabled = state == FUNC3(pipe);

	/*
	 * A transient state at this point would mean some unexpected party
	 * is poking at the power controls too.
	 */
	ctrl = FUNC7(dev_priv, PUNIT_REG_DSPSSPM) & FUNC0(pipe);
	FUNC4(ctrl << 16 != state);

	FUNC6(dev_priv);

	return enabled;
}