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
struct TYPE_2__ {int /*<<< orphan*/  hw_ida; int /*<<< orphan*/  mutex; } ;
struct drm_i915_private {TYPE_1__ contexts; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 unsigned int GEN11_MAX_CONTEXT_HW_ID ; 
 unsigned int GEN12_MAX_CONTEXT_HW_ID ; 
 int FUNC0 (struct drm_i915_private*) ; 
 unsigned int MAX_CONTEXT_HW_ID ; 
 unsigned int MAX_GUC_CONTEXT_HW_ID ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct drm_i915_private *i915, gfp_t gfp)
{
	unsigned int max;

	FUNC3(&i915->contexts.mutex);

	if (FUNC0(i915) >= 12)
		max = GEN12_MAX_CONTEXT_HW_ID;
	else if (FUNC0(i915) >= 11)
		max = GEN11_MAX_CONTEXT_HW_ID;
	else if (FUNC1(i915))
		/*
		 * When using GuC in proxy submission, GuC consumes the
		 * highest bit in the context id to indicate proxy submission.
		 */
		max = MAX_GUC_CONTEXT_HW_ID;
	else
		max = MAX_CONTEXT_HW_ID;

	return FUNC2(&i915->contexts.hw_ida, 0, max, gfp);
}