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
typedef  scalar_t__ u32 ;
struct pdc_state {int /*<<< orphan*/  rx_tasklet; scalar_t__ pdc_reg_vbase; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PDC_INTMASK_OFFSET ; 
 scalar_t__ PDC_INTSTATUS_OFFSET ; 
 struct pdc_state* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct device *dev = (struct device *)data;
	struct pdc_state *pdcs = FUNC0(dev);
	u32 intstatus = FUNC1(pdcs->pdc_reg_vbase + PDC_INTSTATUS_OFFSET);

	if (FUNC4(intstatus == 0))
		return IRQ_NONE;

	/* Disable interrupts until soft handler runs */
	FUNC2(0, pdcs->pdc_reg_vbase + PDC_INTMASK_OFFSET);

	/* Clear interrupt flags in device */
	FUNC2(intstatus, pdcs->pdc_reg_vbase + PDC_INTSTATUS_OFFSET);

	/* Wakeup IRQ thread */
	FUNC3(&pdcs->rx_tasklet);
	return IRQ_HANDLED;
}