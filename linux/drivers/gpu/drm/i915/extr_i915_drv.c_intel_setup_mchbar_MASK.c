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
struct drm_i915_private {int mchbar_need_disable; int /*<<< orphan*/  bridge_dev; } ;

/* Variables and functions */
 int DEVEN ; 
 int DEVEN_MCHBAR_EN ; 
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int MCHBAR_I915 ; 
 int MCHBAR_I965 ; 
 scalar_t__ FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC8(struct drm_i915_private *dev_priv)
{
	int mchbar_reg = FUNC0(dev_priv) >= 4 ? MCHBAR_I965 : MCHBAR_I915;
	u32 temp;
	bool enabled;

	if (FUNC4(dev_priv) || FUNC1(dev_priv))
		return;

	dev_priv->mchbar_need_disable = false;

	if (FUNC2(dev_priv) || FUNC3(dev_priv)) {
		FUNC6(dev_priv->bridge_dev, DEVEN, &temp);
		enabled = !!(temp & DEVEN_MCHBAR_EN);
	} else {
		FUNC6(dev_priv->bridge_dev, mchbar_reg, &temp);
		enabled = temp & 1;
	}

	/* If it's already enabled, don't have to do anything */
	if (enabled)
		return;

	if (FUNC5(dev_priv))
		return;

	dev_priv->mchbar_need_disable = true;

	/* Space is allocated or reserved, so enable it. */
	if (FUNC2(dev_priv) || FUNC3(dev_priv)) {
		FUNC7(dev_priv->bridge_dev, DEVEN,
				       temp | DEVEN_MCHBAR_EN);
	} else {
		FUNC6(dev_priv->bridge_dev, mchbar_reg, &temp);
		FUNC7(dev_priv->bridge_dev, mchbar_reg, temp | 1);
	}
}