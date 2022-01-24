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
struct intel_guc {int dummy; } ;
struct intel_gt {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN11_GUC ; 
 int /*<<< orphan*/  FUNC0 (struct intel_gt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_gt* FUNC1 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct intel_guc *guc)
{
	struct intel_gt *gt = FUNC1(guc);

	FUNC2(&gt->irq_lock);
	FUNC0(gt, 0, GEN11_GUC);
	FUNC3(&gt->irq_lock);
}