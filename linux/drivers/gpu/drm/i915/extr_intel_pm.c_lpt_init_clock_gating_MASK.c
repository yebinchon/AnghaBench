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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int PCH_LP_PARTITION_LEVEL_DISABLE ; 
 int /*<<< orphan*/  PIPE_A ; 
 int /*<<< orphan*/  SOUTH_DSPCLK_GATE_D ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TRANS_CHICKEN1_DP0UNIT_GC_DISABLE ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	/*
	 * TODO: this bit should only be enabled when really needed, then
	 * disabled when not needed anymore in order to save power.
	 */
	if (FUNC0(dev_priv))
		FUNC2(SOUTH_DSPCLK_GATE_D,
			   FUNC1(SOUTH_DSPCLK_GATE_D) |
			   PCH_LP_PARTITION_LEVEL_DISABLE);

	/* WADPOClockGatingDisable:hsw */
	FUNC2(FUNC3(PIPE_A),
		   FUNC1(FUNC3(PIPE_A)) |
		   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
}