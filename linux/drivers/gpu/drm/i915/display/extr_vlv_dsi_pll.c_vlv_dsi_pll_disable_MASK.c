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
 int /*<<< orphan*/  CCK_REG_DSI_PLL_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DSI_PLL_LDO_GATE ; 
 int /*<<< orphan*/  DSI_PLL_VCO_EN ; 
 struct drm_i915_private* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct intel_encoder *encoder)
{
	struct drm_i915_private *dev_priv = FUNC1(encoder->base.dev);
	u32 tmp;

	FUNC0("\n");

	FUNC2(dev_priv);

	tmp = FUNC4(dev_priv, CCK_REG_DSI_PLL_CONTROL);
	tmp &= ~DSI_PLL_VCO_EN;
	tmp |= DSI_PLL_LDO_GATE;
	FUNC5(dev_priv, CCK_REG_DSI_PLL_CONTROL, tmp);

	FUNC3(dev_priv);
}