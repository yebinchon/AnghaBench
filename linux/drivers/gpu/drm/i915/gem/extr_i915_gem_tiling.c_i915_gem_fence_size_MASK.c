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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int I915_TILING_NONE ; 
 int /*<<< orphan*/  I965_FENCE_PAGE ; 
 int FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*,int) ; 
 unsigned int FUNC4 (unsigned int) ; 
 int FUNC5 (int,unsigned int) ; 

u32 FUNC6(struct drm_i915_private *i915,
			u32 size, unsigned int tiling, unsigned int stride)
{
	u32 ggtt_size;

	FUNC0(!size);

	if (tiling == I915_TILING_NONE)
		return size;

	FUNC0(!stride);

	if (FUNC1(i915) >= 4) {
		stride *= FUNC4(tiling);
		FUNC0(!FUNC2(stride, I965_FENCE_PAGE));
		return FUNC5(size, stride);
	}

	/* Previous chips need a power-of-two fence region when tiling */
	if (FUNC3(i915, 3))
		ggtt_size = 1024*1024;
	else
		ggtt_size = 512*1024;

	while (ggtt_size < size)
		ggtt_size <<= 1;

	return ggtt_size;
}