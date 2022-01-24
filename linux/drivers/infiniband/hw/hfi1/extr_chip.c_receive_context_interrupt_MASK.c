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
struct hfi1_devdata {int /*<<< orphan*/ * int_counter; } ;
struct hfi1_ctxtdata {int (* do_interrupt ) (struct hfi1_ctxtdata*,int /*<<< orphan*/ ) ;struct hfi1_devdata* dd; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int RCV_PKT_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_ctxtdata*) ; 
 int FUNC1 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_ctxtdata*) ; 
 int FUNC4 (struct hfi1_ctxtdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,struct hfi1_ctxtdata*) ; 

irqreturn_t FUNC7(int irq, void *data)
{
	struct hfi1_ctxtdata *rcd = data;
	struct hfi1_devdata *dd = rcd->dd;
	int disposition;
	int present;

	FUNC6(dd, rcd);
	FUNC5(*dd->int_counter);
	FUNC0(rcd);

	/* receive interrupt remains blocked while processing packets */
	disposition = rcd->do_interrupt(rcd, 0);

	/*
	 * Too many packets were seen while processing packets in this
	 * IRQ handler.  Invoke the handler thread.  The receive interrupt
	 * remains blocked.
	 */
	if (disposition == RCV_PKT_LIMIT)
		return IRQ_WAKE_THREAD;

	/*
	 * The packet processor detected no more packets.  Clear the receive
	 * interrupt and recheck for a packet packet that may have arrived
	 * after the previous check and interrupt clear.  If a packet arrived,
	 * force another interrupt.
	 */
	FUNC2(rcd);
	present = FUNC1(rcd);
	if (present)
		FUNC3(rcd);

	return IRQ_HANDLED;
}