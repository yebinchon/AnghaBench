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
struct edp_ctrl {int /*<<< orphan*/  aux; int /*<<< orphan*/  idle_comp; int /*<<< orphan*/  irq_lock; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EDP_INTERRUPT_REG_1_HPD ; 
 int EDP_INTERRUPT_REG_2_IDLE_PATTERNs_SENT ; 
 int EDP_INTERRUPT_REG_2_READY_FOR_VIDEO ; 
 int EDP_INTR_MASK1 ; 
 int EDP_INTR_MASK2 ; 
 int EDP_INTR_STATUS1 ; 
 int EDP_INTR_STATUS2 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ REG_EDP_INTERRUPT_REG_1 ; 
 scalar_t__ REG_EDP_INTERRUPT_REG_2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC7(struct edp_ctrl *ctrl)
{
	u32 isr1, isr2, mask1, mask2;
	u32 ack;

	FUNC0("");
	FUNC5(&ctrl->irq_lock);
	isr1 = FUNC2(ctrl->base + REG_EDP_INTERRUPT_REG_1);
	isr2 = FUNC2(ctrl->base + REG_EDP_INTERRUPT_REG_2);

	mask1 = isr1 & EDP_INTR_MASK1;
	mask2 = isr2 & EDP_INTR_MASK2;

	isr1 &= ~mask1;	/* remove masks bit */
	isr2 &= ~mask2;

	FUNC0("isr=%x mask=%x isr2=%x mask2=%x",
			isr1, mask1, isr2, mask2);

	ack = isr1 & EDP_INTR_STATUS1;
	ack <<= 1;	/* ack bits */
	ack |= mask1;
	FUNC3(ctrl->base + REG_EDP_INTERRUPT_REG_1, ack);

	ack = isr2 & EDP_INTR_STATUS2;
	ack <<= 1;	/* ack bits */
	ack |= mask2;
	FUNC3(ctrl->base + REG_EDP_INTERRUPT_REG_2, ack);
	FUNC6(&ctrl->irq_lock);

	if (isr1 & EDP_INTERRUPT_REG_1_HPD)
		FUNC0("edp_hpd");

	if (isr2 & EDP_INTERRUPT_REG_2_READY_FOR_VIDEO)
		FUNC0("edp_video_ready");

	if (isr2 & EDP_INTERRUPT_REG_2_IDLE_PATTERNs_SENT) {
		FUNC0("idle_patterns_sent");
		FUNC1(&ctrl->idle_comp);
	}

	FUNC4(ctrl->aux, isr1);

	return IRQ_HANDLED;
}