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
struct i915_power_well {int dummy; } ;
struct i915_power_domains {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {scalar_t__ dmc_payload; } ;
struct drm_i915_private {TYPE_1__ csr; struct i915_power_domains power_domains; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_STATE_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  SKL_DISP_PW_1 ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,struct i915_power_well*) ; 
 struct i915_power_well* FUNC8 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv, bool resume)
{
	struct i915_power_domains *power_domains = &dev_priv->power_domains;
	struct i915_power_well *well;

	FUNC2(dev_priv, DC_STATE_DISABLE);

	/* 1. Enable PCH Reset Handshake */
	FUNC6(dev_priv, !FUNC0(dev_priv));

	/* 2-3. */
	FUNC4(dev_priv);

	/*
	 * 4. Enable Power Well 1 (PG1).
	 *    The AUX IO power wells will be enabled on demand.
	 */
	FUNC9(&power_domains->lock);
	well = FUNC8(dev_priv, SKL_DISP_PW_1);
	FUNC7(dev_priv, well);
	FUNC10(&power_domains->lock);

	/* 5. Enable CD clock */
	FUNC3(dev_priv);

	/* 6. Enable DBUF */
	FUNC1(dev_priv);

	if (resume && dev_priv->csr.dmc_payload)
		FUNC5(dev_priv);
}