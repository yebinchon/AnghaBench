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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_LP_PARTITION_LEVEL_DISABLE ; 
 int /*<<< orphan*/  SOUTH_DSPCLK_GATE_D ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	if (FUNC0(dev_priv)) {
		u32 val = FUNC1(SOUTH_DSPCLK_GATE_D);

		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
		FUNC2(SOUTH_DSPCLK_GATE_D, val);
	}
}