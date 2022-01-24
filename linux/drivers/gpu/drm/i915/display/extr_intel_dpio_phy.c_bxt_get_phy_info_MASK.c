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
struct drm_i915_private {int dummy; } ;
struct bxt_ddi_phy_info {int dummy; } ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;

/* Variables and functions */
 struct bxt_ddi_phy_info* FUNC0 (struct drm_i915_private*,int*) ; 

__attribute__((used)) static const struct bxt_ddi_phy_info *
FUNC1(struct drm_i915_private *dev_priv, enum dpio_phy phy)
{
	int count;
	const struct bxt_ddi_phy_info *phy_list =
		FUNC0(dev_priv, &count);

	return &phy_list[phy];
}