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
 scalar_t__ FUNC0 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PRB1_BASE ; 
 int /*<<< orphan*/  PRB2_BASE ; 
 int /*<<< orphan*/  SRB0_BASE ; 
 int /*<<< orphan*/  SRB1_BASE ; 
 int /*<<< orphan*/  SRB2_BASE ; 
 int /*<<< orphan*/  SRB3_BASE ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct intel_gt *gt)
{
	struct drm_i915_private *i915 = gt->i915;

	if (FUNC1(i915)) {
		FUNC2(gt, PRB1_BASE);
		FUNC2(gt, SRB0_BASE);
		FUNC2(gt, SRB1_BASE);
		FUNC2(gt, SRB2_BASE);
		FUNC2(gt, SRB3_BASE);
	} else if (FUNC0(i915, 2)) {
		FUNC2(gt, SRB0_BASE);
		FUNC2(gt, SRB1_BASE);
	} else if (FUNC0(i915, 3)) {
		FUNC2(gt, PRB1_BASE);
		FUNC2(gt, PRB2_BASE);
	}
}