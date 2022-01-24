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
struct edp_ctrl {int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EDP_INTR_MASK1 ; 
 int EDP_INTR_MASK2 ; 
 scalar_t__ REG_EDP_INTERRUPT_REG_1 ; 
 scalar_t__ REG_EDP_INTERRUPT_REG_2 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct edp_ctrl *ctrl, int enable)
{
	unsigned long flags;

	FUNC0("%d", enable);
	FUNC2(&ctrl->irq_lock, flags);
	if (enable) {
		FUNC1(ctrl->base + REG_EDP_INTERRUPT_REG_1, EDP_INTR_MASK1);
		FUNC1(ctrl->base + REG_EDP_INTERRUPT_REG_2, EDP_INTR_MASK2);
	} else {
		FUNC1(ctrl->base + REG_EDP_INTERRUPT_REG_1, 0x0);
		FUNC1(ctrl->base + REG_EDP_INTERRUPT_REG_2, 0x0);
	}
	FUNC3(&ctrl->irq_lock, flags);
	FUNC0("exit");
}