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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCH_LP_PARTITION_LEVEL_DISABLE ; 
 int /*<<< orphan*/  SOUTH_DSPCLK_GATE_D ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	u32 val;

	FUNC0("Enabling package C8+\n");

	if (FUNC1(dev_priv)) {
		val = FUNC2(SOUTH_DSPCLK_GATE_D);
		val &= ~PCH_LP_PARTITION_LEVEL_DISABLE;
		FUNC3(SOUTH_DSPCLK_GATE_D, val);
	}

	FUNC5(dev_priv);
	FUNC4(dev_priv, true, true);
}