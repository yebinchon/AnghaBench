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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int PANEL_UNLOCK_MASK ; 
 int PANEL_UNLOCK_REGS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct drm_i915_private *dev_priv)
{
	int pps_num;
	int pps_idx;

	if (FUNC0(dev_priv))
		return;
	/*
	 * This w/a is needed at least on CPT/PPT, but to be sure apply it
	 * everywhere where registers can be write protected.
	 */
	if (FUNC4(dev_priv) || FUNC3(dev_priv))
		pps_num = 2;
	else
		pps_num = 1;

	for (pps_idx = 0; pps_idx < pps_num; pps_idx++) {
		u32 val = FUNC1(FUNC5(pps_idx));

		val = (val & ~PANEL_UNLOCK_MASK) | PANEL_UNLOCK_REGS;
		FUNC2(FUNC5(pps_idx), val);
	}
}