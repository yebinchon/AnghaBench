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
 int /*<<< orphan*/  DC_STATE_DEBUG ; 
 int DC_STATE_DEBUG_MASK_CORES ; 
 int DC_STATE_DEBUG_MASK_MEMORY_UP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct drm_i915_private *dev_priv)
{
	u32 val, mask;

	mask = DC_STATE_DEBUG_MASK_MEMORY_UP;

	if (FUNC2(dev_priv))
		mask |= DC_STATE_DEBUG_MASK_CORES;

	/* The below bit doesn't need to be cleared ever afterwards */
	val = FUNC0(DC_STATE_DEBUG);
	if ((val & mask) != mask) {
		val |= mask;
		FUNC1(DC_STATE_DEBUG, val);
		FUNC3(DC_STATE_DEBUG);
	}
}