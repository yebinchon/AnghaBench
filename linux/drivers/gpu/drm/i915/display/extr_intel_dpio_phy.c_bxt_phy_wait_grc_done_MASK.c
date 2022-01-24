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
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  GRC_DONE ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv,
				  enum dpio_phy phy)
{
	if (FUNC2(dev_priv, FUNC0(phy),
				  GRC_DONE, 10))
		FUNC1("timeout waiting for PHY%d GRC\n", phy);
}