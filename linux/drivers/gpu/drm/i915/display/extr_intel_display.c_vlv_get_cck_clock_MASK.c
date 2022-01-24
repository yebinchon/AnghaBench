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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int CCK_FREQUENCY_STATUS ; 
 int CCK_FREQUENCY_STATUS_SHIFT ; 
 int CCK_FREQUENCY_VALUES ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int FUNC2 (struct drm_i915_private*,int) ; 

int FUNC3(struct drm_i915_private *dev_priv,
		      const char *name, u32 reg, int ref_freq)
{
	u32 val;
	int divider;

	val = FUNC2(dev_priv, reg);
	divider = val & CCK_FREQUENCY_VALUES;

	FUNC1((val & CCK_FREQUENCY_STATUS) !=
	     (divider << CCK_FREQUENCY_STATUS_SHIFT),
	     "%s change in progress\n", name);

	return FUNC0(ref_freq << 1, divider + 1);
}