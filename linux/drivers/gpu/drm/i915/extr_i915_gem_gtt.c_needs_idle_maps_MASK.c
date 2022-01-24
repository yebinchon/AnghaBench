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

/* Variables and functions */
 scalar_t__ FUNC0 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static bool FUNC3(struct drm_i915_private *dev_priv)
{
	/* Query intel_iommu to see if we need the workaround. Presumably that
	 * was loaded first.
	 */
	return FUNC0(dev_priv, 5) && FUNC1(dev_priv) && FUNC2();
}