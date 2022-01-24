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
struct hfi1_ctxtdata {int /*<<< orphan*/  (* do_interrupt ) (struct hfi1_ctxtdata*,int) ;} ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_ctxtdata*,int) ; 

irqreturn_t FUNC6(int irq, void *data)
{
	struct hfi1_ctxtdata *rcd = data;
	int present;

	/* receive interrupt is still blocked from the IRQ handler */
	(void)rcd->do_interrupt(rcd, 1);

	/*
	 * The packet processor will only return if it detected no more
	 * packets.  Hold IRQs here so we can safely clear the interrupt and
	 * recheck for a packet that may have arrived after the previous
	 * check and the interrupt clear.  If a packet arrived, force another
	 * interrupt.
	 */
	FUNC3();
	FUNC1(rcd);
	present = FUNC0(rcd);
	if (present)
		FUNC2(rcd);
	FUNC4();

	return IRQ_HANDLED;
}