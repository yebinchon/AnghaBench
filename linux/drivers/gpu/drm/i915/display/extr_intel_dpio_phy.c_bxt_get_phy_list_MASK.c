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

/* Variables and functions */
 int FUNC0 (struct bxt_ddi_phy_info const*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 struct bxt_ddi_phy_info const* bxt_ddi_phy_info ; 
 struct bxt_ddi_phy_info const* glk_ddi_phy_info ; 

__attribute__((used)) static const struct bxt_ddi_phy_info *
FUNC2(struct drm_i915_private *dev_priv, int *count)
{
	if (FUNC1(dev_priv)) {
		*count =  FUNC0(glk_ddi_phy_info);
		return glk_ddi_phy_info;
	} else {
		*count =  FUNC0(bxt_ddi_phy_info);
		return bxt_ddi_phy_info;
	}
}