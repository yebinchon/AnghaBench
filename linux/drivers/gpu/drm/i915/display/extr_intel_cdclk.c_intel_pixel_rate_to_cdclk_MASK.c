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
 int FUNC0 (int,int) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 

__attribute__((used)) static int FUNC7(struct drm_i915_private *dev_priv,
				     int pixel_rate)
{
	if (FUNC1(dev_priv) >= 10 || FUNC4(dev_priv))
		return FUNC0(pixel_rate, 2);
	else if (FUNC5(dev_priv, 9) ||
		 FUNC2(dev_priv) || FUNC6(dev_priv))
		return pixel_rate;
	else if (FUNC3(dev_priv))
		return FUNC0(pixel_rate * 100, 95);
	else
		return FUNC0(pixel_rate * 100, 90);
}