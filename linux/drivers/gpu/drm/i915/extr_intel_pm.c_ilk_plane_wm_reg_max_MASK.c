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
 int FUNC0 (struct drm_i915_private const*) ; 

__attribute__((used)) static unsigned int
FUNC1(const struct drm_i915_private *dev_priv,
		     int level, bool is_sprite)
{
	if (FUNC0(dev_priv) >= 8)
		/* BDW primary/sprite plane watermarks */
		return level == 0 ? 255 : 2047;
	else if (FUNC0(dev_priv) >= 7)
		/* IVB/HSW primary/sprite plane watermarks */
		return level == 0 ? 127 : 1023;
	else if (!is_sprite)
		/* ILK/SNB primary plane watermarks */
		return level == 0 ? 127 : 511;
	else
		/* ILK/SNB sprite plane watermarks */
		return level == 0 ? 63 : 255;
}