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
 int FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 

__attribute__((used)) static bool FUNC2(struct drm_i915_private *dev_priv, int level)
{
	if (FUNC0(dev_priv) >= 10 || FUNC1(dev_priv))
		return true;

	/* The number of lines are ignored for the level 0 watermark. */
	return level > 0;
}