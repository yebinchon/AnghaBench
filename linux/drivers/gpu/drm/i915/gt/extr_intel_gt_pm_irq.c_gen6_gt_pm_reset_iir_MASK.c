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
typedef  int /*<<< orphan*/  u32 ;
struct intel_uncore {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  i915; struct intel_uncore* uncore; } ;
typedef  int /*<<< orphan*/  i915_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  GEN6_PMIIR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct intel_gt *gt, u32 reset_mask)
{
	struct intel_uncore *uncore = gt->uncore;
	i915_reg_t reg = FUNC1(gt->i915) >= 8 ? FUNC0(2) : GEN6_PMIIR;

	FUNC4(&gt->irq_lock);

	FUNC3(uncore, reg, reset_mask);
	FUNC3(uncore, reg, reset_mask);
	FUNC2(uncore, reg);
}