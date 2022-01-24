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
struct i915_power_well {int dummy; } ;
struct i915_power_domains {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {struct i915_power_domains power_domains; } ;

/* Variables and functions */
 int /*<<< orphan*/  SKL_DISP_PW_1 ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,struct i915_power_well*) ; 
 struct i915_power_well* FUNC4 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	struct i915_power_domains *power_domains = &dev_priv->power_domains;
	struct i915_power_well *well;

	FUNC1(dev_priv);

	FUNC0(dev_priv);

	FUNC2(dev_priv);

	/* The spec doesn't call for removing the reset handshake flag */

	/*
	 * Disable PW1 (PG1).
	 * Note that even though the driver's request is removed power well 1
	 * may stay enabled after this due to DMC's own request on it.
	 */
	FUNC5(&power_domains->lock);

	well = FUNC4(dev_priv, SKL_DISP_PW_1);
	FUNC3(dev_priv, well);

	FUNC6(&power_domains->lock);

	FUNC7(10, 30);		/* 10 us delay per Bspec */
}