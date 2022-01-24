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
struct TYPE_3__ {scalar_t__ vco; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;
struct drm_i915_private {TYPE_2__ cdclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_DE_PLL_ENABLE ; 
 int BXT_DE_PLL_LOCK ; 
 int BXT_DE_PLL_PLL_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 val;

	val = FUNC1(BXT_DE_PLL_ENABLE);
	val &= ~BXT_DE_PLL_PLL_ENABLE;
	FUNC2(BXT_DE_PLL_ENABLE, val);

	/* Timeout 200us */
	if (FUNC3((FUNC1(BXT_DE_PLL_ENABLE) & BXT_DE_PLL_LOCK) == 0, 1))
		FUNC0("timeout waiting for CDCLK PLL unlock\n");

	dev_priv->cdclk.hw.vco = 0;
}