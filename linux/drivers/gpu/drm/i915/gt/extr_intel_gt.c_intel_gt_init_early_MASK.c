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
struct intel_gt {int /*<<< orphan*/  uc; int /*<<< orphan*/  closed_lock; int /*<<< orphan*/  closed_vma; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/ * uncore; struct drm_i915_private* i915; } ;
struct drm_i915_private {int /*<<< orphan*/  uncore; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_gt*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct intel_gt *gt, struct drm_i915_private *i915)
{
	gt->i915 = i915;
	gt->uncore = &i915->uncore;

	FUNC5(&gt->irq_lock);

	FUNC0(&gt->closed_vma);
	FUNC5(&gt->closed_lock);

	FUNC1(gt);
	FUNC2(gt);
	FUNC3(gt);
	FUNC4(&gt->uc);
}