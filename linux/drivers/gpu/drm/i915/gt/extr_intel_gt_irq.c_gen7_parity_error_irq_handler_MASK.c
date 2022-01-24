#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct intel_gt {TYPE_2__* i915; int /*<<< orphan*/  irq_lock; } ;
struct TYPE_4__ {int which_slice; int /*<<< orphan*/  error_work; } ;
struct TYPE_5__ {TYPE_1__ l3_parity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int GT_RENDER_L3_PARITY_ERROR_INTERRUPT ; 
 int GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_gt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct intel_gt *gt, u32 iir)
{
	if (!FUNC1(gt->i915))
		return;

	FUNC4(&gt->irq_lock);
	FUNC2(gt, FUNC0(gt->i915));
	FUNC5(&gt->irq_lock);

	if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1)
		gt->i915->l3_parity.which_slice |= 1 << 1;

	if (iir & GT_RENDER_L3_PARITY_ERROR_INTERRUPT)
		gt->i915->l3_parity.which_slice |= 1 << 0;

	FUNC3(&gt->i915->l3_parity.error_work);
}