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
struct intel_gt {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_ENGINES ; 
 int FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gt*,int /*<<< orphan*/ ) ; 

void FUNC4(struct intel_gt *gt)
{
	struct drm_i915_private *i915 = gt->i915;

	/* From GEN8 onwards we only have one 'All Engine Fault Register' */
	if (FUNC0(i915) >= 8)
		FUNC2(gt);
	else if (FUNC0(i915) >= 6)
		FUNC1(gt);
	else
		return;

	FUNC3(gt, ALL_ENGINES);
}