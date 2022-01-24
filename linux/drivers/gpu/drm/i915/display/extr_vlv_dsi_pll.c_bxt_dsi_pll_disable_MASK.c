#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_DSI_PLL_DO_ENABLE ; 
 int /*<<< orphan*/  BXT_DSI_PLL_ENABLE ; 
 int /*<<< orphan*/  BXT_DSI_PLL_LOCKED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC5(encoder->base.dev);
	u32 val;

	FUNC0("\n");

	val = FUNC2(BXT_DSI_PLL_ENABLE);
	val &= ~BXT_DSI_PLL_DO_ENABLE;
	FUNC3(BXT_DSI_PLL_ENABLE, val);

	/*
	 * PLL lock should deassert within 200us.
	 * Wait up to 1ms before timing out.
	 */
	if (FUNC4(dev_priv, BXT_DSI_PLL_ENABLE,
				    BXT_DSI_PLL_LOCKED, 1))
		FUNC1("Timeout waiting for PLL lock deassertion\n");
}