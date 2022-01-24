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
 int /*<<< orphan*/  CCK_REG_DSI_PLL_CONTROL ; 
 int DSI_PLL_VCO_EN ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 

void FUNC5(struct drm_i915_private *dev_priv, bool state)
{
	u32 val;
	bool cur_state;

	FUNC2(dev_priv);
	val = FUNC4(dev_priv, CCK_REG_DSI_PLL_CONTROL);
	FUNC3(dev_priv);

	cur_state = val & DSI_PLL_VCO_EN;
	FUNC0(cur_state != state,
	     "DSI PLL state assertion failure (expected %s, current %s)\n",
			FUNC1(state), FUNC1(cur_state));
}