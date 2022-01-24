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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
u32 FUNC3(struct drm_i915_private *dev_priv,
			u32 pixel_format, u64 modifier)
{
	/*
	 * Arbitrary limit for gen4+ chosen to match the
	 * render engine max stride.
	 *
	 * The new CCS hash mode makes remapping impossible
	 */
	if (!FUNC2(modifier)) {
		if (FUNC0(dev_priv) >= 7)
			return 256*1024;
		else if (FUNC0(dev_priv) >= 4)
			return 128*1024;
	}

	return FUNC1(dev_priv, pixel_format, modifier);
}