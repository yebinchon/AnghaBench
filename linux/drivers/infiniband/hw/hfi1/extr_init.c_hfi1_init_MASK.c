#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u16 ;
struct hfi1_pportdata {int* statusp; int /*<<< orphan*/  link_speed_enabled; int /*<<< orphan*/  port; scalar_t__ linkup; } ;
struct hfi1_devdata {int do_drop; int num_pports; scalar_t__ first_dyn_alloc_ctxt; struct hfi1_pportdata* pport; TYPE_2__* status; void* events; scalar_t__ rcd; int /*<<< orphan*/  rcvhdrtail_dummy_kvaddr; int /*<<< orphan*/  rcvhdrtail_dummy_dma; TYPE_1__* pcidev; int /*<<< orphan*/  drop_packet; int /*<<< orphan*/  process_vnic_dma_send; int /*<<< orphan*/  pio_inline_send; int /*<<< orphan*/  process_dma_send; int /*<<< orphan*/  process_pio_send; } ;
struct hfi1_ctxtdata {int /*<<< orphan*/ * do_interrupt; } ;
struct TYPE_4__ {int port; int dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DROP_PACKET_OFF ; 
 int /*<<< orphan*/  DROP_PACKET_ON ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HFI1_MAX_SHARED_CTXTS ; 
 int HFI1_STATUS_CHIP_PRESENT ; 
 int HFI1_STATUS_INITTED ; 
 unsigned long FUNC0 (int) ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hfi1_pportdata*) ; 
 int FUNC3 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  handle_receive_interrupt ; 
 int FUNC9 (struct hfi1_devdata*,struct hfi1_ctxtdata*) ; 
 int FUNC10 (struct hfi1_ctxtdata*,int) ; 
 struct hfi1_ctxtdata* FUNC11 (struct hfi1_devdata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct hfi1_ctxtdata*) ; 
 int FUNC13 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  hfi1_verbs_send_dma ; 
 int /*<<< orphan*/  hfi1_verbs_send_pio ; 
 int /*<<< orphan*/  hfi1_vnic_send_dma ; 
 int FUNC14 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC15 (struct hfi1_devdata*) ; 
 scalar_t__ FUNC16 (struct hfi1_devdata*) ; 
 int FUNC17 (struct hfi1_devdata*) ; 
 int /*<<< orphan*/  pio_copy ; 
 int /*<<< orphan*/  FUNC18 (struct hfi1_pportdata*) ; 
 void* FUNC19 (unsigned long) ; 

int FUNC20(struct hfi1_devdata *dd, int reinit)
{
	int ret = 0, pidx, lastfail = 0;
	unsigned long len;
	u16 i;
	struct hfi1_ctxtdata *rcd;
	struct hfi1_pportdata *ppd;

	/* Set up send low level handlers */
	dd->process_pio_send = hfi1_verbs_send_pio;
	dd->process_dma_send = hfi1_verbs_send_dma;
	dd->pio_inline_send = pio_copy;
	dd->process_vnic_dma_send = hfi1_vnic_send_dma;

	if (FUNC16(dd)) {
		FUNC1(&dd->drop_packet, DROP_PACKET_ON);
		dd->do_drop = 1;
	} else {
		FUNC1(&dd->drop_packet, DROP_PACKET_OFF);
		dd->do_drop = 0;
	}

	/* make sure the link is not "up" */
	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		ppd->linkup = 0;
	}

	if (reinit)
		ret = FUNC14(dd);
	else
		ret = FUNC17(dd);
	if (ret)
		goto done;

	/* allocate dummy tail memory for all receive contexts */
	dd->rcvhdrtail_dummy_kvaddr = FUNC6(&dd->pcidev->dev,
							 sizeof(u64),
							 &dd->rcvhdrtail_dummy_dma,
							 GFP_KERNEL);

	if (!dd->rcvhdrtail_dummy_kvaddr) {
		FUNC4(dd, "cannot allocate dummy tail memory\n");
		ret = -ENOMEM;
		goto done;
	}

	/* dd->rcd can be NULL if early initialization failed */
	for (i = 0; dd->rcd && i < dd->first_dyn_alloc_ctxt; ++i) {
		/*
		 * Set up the (kernel) rcvhdr queue and egr TIDs.  If doing
		 * re-init, the simplest way to handle this is to free
		 * existing, and re-allocate.
		 * Need to re-create rest of ctxt 0 ctxtdata as well.
		 */
		rcd = FUNC11(dd, i);
		if (!rcd)
			continue;

		rcd->do_interrupt = &handle_receive_interrupt;

		lastfail = FUNC9(dd, rcd);
		if (!lastfail)
			lastfail = FUNC13(rcd);
		if (!lastfail)
			lastfail = FUNC10(rcd, reinit);
		if (lastfail) {
			FUNC4(dd,
				   "failed to allocate kernel ctxt's rcvhdrq and/or egr bufs\n");
			ret = lastfail;
		}
		/* enable IRQ */
		FUNC12(rcd);
	}

	/* Allocate enough memory for user event notification. */
	len = FUNC0(FUNC3(dd) * HFI1_MAX_SHARED_CTXTS *
			 sizeof(*dd->events));
	dd->events = FUNC19(len);
	if (!dd->events)
		FUNC4(dd, "Failed to allocate user events page\n");
	/*
	 * Allocate a page for device and port status.
	 * Page will be shared amongst all user processes.
	 */
	dd->status = FUNC19(PAGE_SIZE);
	if (!dd->status)
		FUNC4(dd, "Failed to allocate dev status page\n");
	for (pidx = 0; pidx < dd->num_pports; ++pidx) {
		ppd = dd->pport + pidx;
		if (dd->status)
			/* Currently, we only have one port */
			ppd->statusp = &dd->status->port;

		FUNC18(ppd);
	}

	/* enable chip even if we have an error, so we can debug cause */
	FUNC7(dd);

done:
	/*
	 * Set status even if port serdes is not initialized
	 * so that diags will work.
	 */
	if (dd->status)
		dd->status->dev |= HFI1_STATUS_CHIP_PRESENT |
			HFI1_STATUS_INITTED;
	if (!ret) {
		/* enable all interrupts from the chip */
		FUNC8(dd);
		FUNC15(dd);

		/* chip is OK for user apps; mark it as initialized */
		for (pidx = 0; pidx < dd->num_pports; ++pidx) {
			ppd = dd->pport + pidx;

			/*
			 * start the serdes - must be after interrupts are
			 * enabled so we are notified when the link goes up
			 */
			lastfail = FUNC2(ppd);
			if (lastfail)
				FUNC5(dd,
					    "Failed to bring up port %u\n",
					    ppd->port);

			/*
			 * Set status even if port serdes is not initialized
			 * so that diags will work.
			 */
			if (ppd->statusp)
				*ppd->statusp |= HFI1_STATUS_CHIP_PRESENT |
							HFI1_STATUS_INITTED;
			if (!ppd->link_speed_enabled)
				continue;
		}
	}

	/* if ret is non-zero, we probably should do some cleanup here... */
	return ret;
}