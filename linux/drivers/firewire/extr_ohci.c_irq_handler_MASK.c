#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_11__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_10__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_9__ {int /*<<< orphan*/  tasklet; } ;
struct fw_ohci {int /*<<< orphan*/  lock; TYPE_8__* it_context_list; TYPE_6__* ir_context_list; TYPE_4__ at_response_ctx; TYPE_3__ at_request_ctx; TYPE_2__ ar_response_ctx; TYPE_1__ ar_request_ctx; int /*<<< orphan*/  bus_reset_work; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_15__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_16__ {TYPE_7__ context; } ;
struct TYPE_13__ {int /*<<< orphan*/  tasklet; } ;
struct TYPE_14__ {TYPE_5__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  OHCI1394_IntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IsoRecvIntEventClear ; 
 int /*<<< orphan*/  OHCI1394_IsoXmitIntEventClear ; 
 int /*<<< orphan*/  OHCI1394_LinkControlSet ; 
 int OHCI1394_LinkControl_cycleMaster ; 
 int /*<<< orphan*/  OHCI1394_PostedWriteAddressHi ; 
 int /*<<< orphan*/  OHCI1394_PostedWriteAddressLo ; 
 int OHCI1394_RQPkt ; 
 int OHCI1394_RSPkt ; 
 int OHCI1394_busReset ; 
 int OHCI1394_cycle64Seconds ; 
 int OHCI1394_cycleInconsistent ; 
 int OHCI1394_cycleTooLong ; 
 int OHCI1394_isochRx ; 
 int OHCI1394_isochTx ; 
 int OHCI1394_postedWriteErr ; 
 int OHCI1394_regAccessFail ; 
 int OHCI1394_reqTxComplete ; 
 int OHCI1394_respTxComplete ; 
 int OHCI1394_selfIDComplete ; 
 int OHCI1394_unrecoverableError ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC2 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_ohci*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_ohci*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_ohci*,char*) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct fw_ohci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct fw_ohci*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  selfid_workqueue ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct fw_ohci*) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct fw_ohci *ohci = data;
	u32 event, iso_event;
	int i;

	event = FUNC8(ohci, OHCI1394_IntEventClear);

	if (!event || !~event)
		return IRQ_NONE;

	/*
	 * busReset and postedWriteErr must not be cleared yet
	 * (OHCI 1.1 clauses 7.2.3.2 and 13.2.8.1)
	 */
	FUNC9(ohci, OHCI1394_IntEventClear,
		  event & ~(OHCI1394_busReset | OHCI1394_postedWriteErr));
	FUNC3(ohci, event);

	if (event & OHCI1394_selfIDComplete)
		FUNC7(selfid_workqueue, &ohci->bus_reset_work);

	if (event & OHCI1394_RQPkt)
		FUNC12(&ohci->ar_request_ctx.tasklet);

	if (event & OHCI1394_RSPkt)
		FUNC12(&ohci->ar_response_ctx.tasklet);

	if (event & OHCI1394_reqTxComplete)
		FUNC12(&ohci->at_request_ctx.tasklet);

	if (event & OHCI1394_respTxComplete)
		FUNC12(&ohci->at_response_ctx.tasklet);

	if (event & OHCI1394_isochRx) {
		iso_event = FUNC8(ohci, OHCI1394_IsoRecvIntEventClear);
		FUNC9(ohci, OHCI1394_IsoRecvIntEventClear, iso_event);

		while (iso_event) {
			i = FUNC0(iso_event) - 1;
			FUNC12(
				&ohci->ir_context_list[i].context.tasklet);
			iso_event &= ~(1 << i);
		}
	}

	if (event & OHCI1394_isochTx) {
		iso_event = FUNC8(ohci, OHCI1394_IsoXmitIntEventClear);
		FUNC9(ohci, OHCI1394_IsoXmitIntEventClear, iso_event);

		while (iso_event) {
			i = FUNC0(iso_event) - 1;
			FUNC12(
				&ohci->it_context_list[i].context.tasklet);
			iso_event &= ~(1 << i);
		}
	}

	if (FUNC13(event & OHCI1394_regAccessFail))
		FUNC4(ohci, "register access failure\n");

	if (FUNC13(event & OHCI1394_postedWriteErr)) {
		FUNC8(ohci, OHCI1394_PostedWriteAddressHi);
		FUNC8(ohci, OHCI1394_PostedWriteAddressLo);
		FUNC9(ohci, OHCI1394_IntEventClear,
			  OHCI1394_postedWriteErr);
		if (FUNC6())
			FUNC4(ohci, "PCI posted write error\n");
	}

	if (FUNC13(event & OHCI1394_cycleTooLong)) {
		if (FUNC6())
			FUNC5(ohci, "isochronous cycle too long\n");
		FUNC9(ohci, OHCI1394_LinkControlSet,
			  OHCI1394_LinkControl_cycleMaster);
	}

	if (FUNC13(event & OHCI1394_cycleInconsistent)) {
		/*
		 * We need to clear this event bit in order to make
		 * cycleMatch isochronous I/O work.  In theory we should
		 * stop active cycleMatch iso contexts now and restart
		 * them at least two cycles later.  (FIXME?)
		 */
		if (FUNC6())
			FUNC5(ohci, "isochronous cycle inconsistent\n");
	}

	if (FUNC13(event & OHCI1394_unrecoverableError))
		FUNC2(ohci);

	if (event & OHCI1394_cycle64Seconds) {
		FUNC10(&ohci->lock);
		FUNC14(ohci);
		FUNC11(&ohci->lock);
	} else
		FUNC1(ohci);

	return IRQ_HANDLED;
}