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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct drm_i915_private {TYPE_1__ power_domains; } ;
struct bxt_ddi_phy_info {int rcomp_phy; } ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*,int) ; 
 int FUNC1 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*,int) ; 
 struct bxt_ddi_phy_info* FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_i915_private *dev_priv, enum dpio_phy phy)
{
	const struct bxt_ddi_phy_info *phy_info =
		FUNC3(dev_priv, phy);
	enum dpio_phy rcomp_phy = phy_info->rcomp_phy;
	bool was_enabled;

	FUNC4(&dev_priv->power_domains.lock);

	was_enabled = true;
	if (rcomp_phy != -1)
		was_enabled = FUNC1(dev_priv, rcomp_phy);

	/*
	 * We need to copy the GRC calibration value from rcomp_phy,
	 * so make sure it's powered up.
	 */
	if (!was_enabled)
		FUNC0(dev_priv, rcomp_phy);

	FUNC0(dev_priv, phy);

	if (!was_enabled)
		FUNC2(dev_priv, rcomp_phy);
}