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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dw_i3c_master {TYPE_1__ xferqueue; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int INTR_ALL ; 
 scalar_t__ INTR_STATUS ; 
 scalar_t__ INTR_STATUS_EN ; 
 int INTR_TRANSFER_ERR_STAT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct dw_i3c_master*,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct dw_i3c_master *master = dev_id;
	u32 status;

	status = FUNC1(master->regs + INTR_STATUS);

	if (!(status & FUNC1(master->regs + INTR_STATUS_EN))) {
		FUNC4(INTR_ALL, master->regs + INTR_STATUS);
		return IRQ_NONE;
	}

	FUNC2(&master->xferqueue.lock);
	FUNC0(master, status);
	if (status & INTR_TRANSFER_ERR_STAT)
		FUNC4(INTR_TRANSFER_ERR_STAT, master->regs + INTR_STATUS);
	FUNC3(&master->xferqueue.lock);

	return IRQ_HANDLED;
}