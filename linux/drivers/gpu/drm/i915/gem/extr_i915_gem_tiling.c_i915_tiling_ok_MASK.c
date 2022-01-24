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
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;

/* Variables and functions */
 unsigned int GEN7_FENCE_MAX_PITCH_VAL ; 
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 unsigned int I915_TILING_LAST ; 
 unsigned int I915_TILING_NONE ; 
 unsigned int I915_TILING_Y ; 
 unsigned int I965_FENCE_MAX_PITCH_VAL ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 struct drm_i915_private* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6(struct drm_i915_gem_object *obj,
	       unsigned int tiling, unsigned int stride)
{
	struct drm_i915_private *i915 = FUNC5(obj->base.dev);
	unsigned int tile_width;

	/* Linear is always fine */
	if (tiling == I915_TILING_NONE)
		return true;

	if (tiling > I915_TILING_LAST)
		return false;

	/* check maximum stride & object size */
	/* i965+ stores the end address of the gtt mapping in the fence
	 * reg, so dont bother to check the size */
	if (FUNC1(i915) >= 7) {
		if (stride / 128 > GEN7_FENCE_MAX_PITCH_VAL)
			return false;
	} else if (FUNC1(i915) >= 4) {
		if (stride / 128 > I965_FENCE_MAX_PITCH_VAL)
			return false;
	} else {
		if (stride > 8192)
			return false;

		if (!FUNC4(stride))
			return false;
	}

	if (FUNC3(i915, 2) ||
	    (tiling == I915_TILING_Y && FUNC0(i915)))
		tile_width = 128;
	else
		tile_width = 512;

	if (!stride || !FUNC2(stride, tile_width))
		return false;

	return true;
}