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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int vco; int /*<<< orphan*/  ref; } ;
struct TYPE_3__ {TYPE_2__ hw; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_DE_PLL_ENABLE ; 
 int BXT_DE_PLL_LOCK ; 
 int /*<<< orphan*/  BXT_DE_PLL_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv, int vco)
{
	int ratio = FUNC1(vco, dev_priv->cdclk.hw.ref);
	u32 val;

	val = FUNC0(ratio);
	FUNC4(BXT_DE_PLL_ENABLE, val);

	val |= BXT_DE_PLL_PLL_ENABLE;
	FUNC4(BXT_DE_PLL_ENABLE, val);

	/* Timeout 200us */
	if (FUNC5((FUNC3(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) != 0, 1))
		FUNC2("timeout waiting for CDCLK PLL lock\n");

	dev_priv->cdclk.hw.vco = vco;
}