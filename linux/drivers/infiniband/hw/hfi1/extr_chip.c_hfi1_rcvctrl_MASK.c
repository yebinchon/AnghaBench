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
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct hfi1_devdata {int rcvhdrtail_dummy_dma; scalar_t__ rcv_intr_timeout_csr; } ;
struct TYPE_2__ {int alloced; int /*<<< orphan*/  rcvtid_size; } ;
struct hfi1_ctxtdata {scalar_t__ ctxt; int rcvhdrq_dma; int rcvhdrqtailaddr_dma; int seq_cnt; int eager_base; int expected_count; int expected_base; scalar_t__ rcvavail_timeout; scalar_t__ rcvhdrtail_kvaddr; TYPE_1__ egrbufs; int /*<<< orphan*/  rcvhdrq; scalar_t__ head; } ;

/* Variables and functions */
 scalar_t__ HFI1_CTRL_CTXT ; 
 unsigned int HFI1_RCVCTRL_CTXT_DIS ; 
 unsigned int HFI1_RCVCTRL_CTXT_ENB ; 
 unsigned int HFI1_RCVCTRL_INTRAVAIL_DIS ; 
 unsigned int HFI1_RCVCTRL_INTRAVAIL_ENB ; 
 unsigned int HFI1_RCVCTRL_NO_EGR_DROP_DIS ; 
 unsigned int HFI1_RCVCTRL_NO_EGR_DROP_ENB ; 
 unsigned int HFI1_RCVCTRL_NO_RHQ_DROP_DIS ; 
 unsigned int HFI1_RCVCTRL_NO_RHQ_DROP_ENB ; 
 unsigned int HFI1_RCVCTRL_ONE_PKT_EGR_DIS ; 
 unsigned int HFI1_RCVCTRL_ONE_PKT_EGR_ENB ; 
 unsigned int HFI1_RCVCTRL_TAILUPD_DIS ; 
 unsigned int HFI1_RCVCTRL_TAILUPD_ENB ; 
 unsigned int HFI1_RCVCTRL_TIDFLOW_DIS ; 
 unsigned int HFI1_RCVCTRL_TIDFLOW_ENB ; 
 unsigned int HFI1_RCVCTRL_URGENT_DIS ; 
 unsigned int HFI1_RCVCTRL_URGENT_ENB ; 
 scalar_t__ IS_RCVAVAIL_START ; 
 scalar_t__ IS_RCVURGENT_START ; 
 int /*<<< orphan*/  RCVCTRL ; 
 int /*<<< orphan*/  RCV_AVAIL_TIME_OUT ; 
 int RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT ; 
 int /*<<< orphan*/  RCV_CTXT_CTRL ; 
 int RCV_CTXT_CTRL_DONT_DROP_EGR_FULL_SMASK ; 
 int RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK ; 
 int RCV_CTXT_CTRL_EGR_BUF_SIZE_MASK ; 
 int RCV_CTXT_CTRL_EGR_BUF_SIZE_SHIFT ; 
 int RCV_CTXT_CTRL_EGR_BUF_SIZE_SMASK ; 
 int RCV_CTXT_CTRL_ENABLE_SMASK ; 
 int RCV_CTXT_CTRL_INTR_AVAIL_SMASK ; 
 int RCV_CTXT_CTRL_ONE_PACKET_PER_EGR_BUFFER_SMASK ; 
 int RCV_CTXT_CTRL_TAIL_UPD_SMASK ; 
 int RCV_CTXT_CTRL_TID_FLOW_ENABLE_SMASK ; 
 int /*<<< orphan*/  RCV_CTXT_STATUS ; 
 int /*<<< orphan*/  RCV_EGR_CTRL ; 
 int RCV_EGR_CTRL_EGR_BASE_INDEX_MASK ; 
 int RCV_EGR_CTRL_EGR_BASE_INDEX_SHIFT ; 
 int RCV_EGR_CTRL_EGR_CNT_MASK ; 
 int RCV_EGR_CTRL_EGR_CNT_SHIFT ; 
 int /*<<< orphan*/  RCV_EGR_INDEX_HEAD ; 
 int /*<<< orphan*/  RCV_HDR_ADDR ; 
 int /*<<< orphan*/  RCV_HDR_HEAD ; 
 int RCV_HDR_HEAD_COUNTER_SHIFT ; 
 int /*<<< orphan*/  RCV_HDR_TAIL_ADDR ; 
 int RCV_SHIFT ; 
 int /*<<< orphan*/  RCV_TID_CTRL ; 
 int RCV_TID_CTRL_TID_BASE_INDEX_MASK ; 
 int RCV_TID_CTRL_TID_BASE_INDEX_SHIFT ; 
 int RCV_TID_CTRL_TID_PAIR_CNT_MASK ; 
 int RCV_TID_CTRL_TID_PAIR_CNT_SHIFT ; 
 int /*<<< orphan*/  RCV_VL15 ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*,scalar_t__,int,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ rcv_intr_count ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_ctxtdata*) ; 
 int FUNC5 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hfi1_devdata*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_devdata*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct hfi1_devdata*,scalar_t__,int /*<<< orphan*/ ,int) ; 

void FUNC11(struct hfi1_devdata *dd, unsigned int op,
		  struct hfi1_ctxtdata *rcd)
{
	u64 rcvctrl, reg;
	int did_enable = 0;
	u16 ctxt;

	if (!rcd)
		return;

	ctxt = rcd->ctxt;

	FUNC2(RCVCTRL, "ctxt %d op 0x%x", ctxt, op);

	rcvctrl = FUNC5(dd, ctxt, RCV_CTXT_CTRL);
	/* if the context already enabled, don't do the extra steps */
	if ((op & HFI1_RCVCTRL_CTXT_ENB) &&
	    !(rcvctrl & RCV_CTXT_CTRL_ENABLE_SMASK)) {
		/* reset the tail and hdr addresses, and sequence count */
		FUNC9(dd, ctxt, RCV_HDR_ADDR,
				rcd->rcvhdrq_dma);
		if (rcd->rcvhdrtail_kvaddr)
			FUNC9(dd, ctxt, RCV_HDR_TAIL_ADDR,
					rcd->rcvhdrqtailaddr_dma);
		rcd->seq_cnt = 1;

		/* reset the cached receive header queue head value */
		rcd->head = 0;

		/*
		 * Zero the receive header queue so we don't get false
		 * positives when checking the sequence number.  The
		 * sequence numbers could land exactly on the same spot.
		 * E.g. a rcd restart before the receive header wrapped.
		 */
		FUNC3(rcd->rcvhdrq, 0, FUNC4(rcd));

		/* starting timeout */
		rcd->rcvavail_timeout = dd->rcv_intr_timeout_csr;

		/* enable the context */
		rcvctrl |= RCV_CTXT_CTRL_ENABLE_SMASK;

		/* clean the egr buffer size first */
		rcvctrl &= ~RCV_CTXT_CTRL_EGR_BUF_SIZE_SMASK;
		rcvctrl |= ((u64)FUNC1(rcd->egrbufs.rcvtid_size)
				& RCV_CTXT_CTRL_EGR_BUF_SIZE_MASK)
					<< RCV_CTXT_CTRL_EGR_BUF_SIZE_SHIFT;

		/* zero RcvHdrHead - set RcvHdrHead.Counter after enable */
		FUNC10(dd, ctxt, RCV_HDR_HEAD, 0);
		did_enable = 1;

		/* zero RcvEgrIndexHead */
		FUNC10(dd, ctxt, RCV_EGR_INDEX_HEAD, 0);

		/* set eager count and base index */
		reg = (((u64)(rcd->egrbufs.alloced >> RCV_SHIFT)
			& RCV_EGR_CTRL_EGR_CNT_MASK)
		       << RCV_EGR_CTRL_EGR_CNT_SHIFT) |
			(((rcd->eager_base >> RCV_SHIFT)
			  & RCV_EGR_CTRL_EGR_BASE_INDEX_MASK)
			 << RCV_EGR_CTRL_EGR_BASE_INDEX_SHIFT);
		FUNC9(dd, ctxt, RCV_EGR_CTRL, reg);

		/*
		 * Set TID (expected) count and base index.
		 * rcd->expected_count is set to individual RcvArray entries,
		 * not pairs, and the CSR takes a pair-count in groups of
		 * four, so divide by 8.
		 */
		reg = (((rcd->expected_count >> RCV_SHIFT)
					& RCV_TID_CTRL_TID_PAIR_CNT_MASK)
				<< RCV_TID_CTRL_TID_PAIR_CNT_SHIFT) |
		      (((rcd->expected_base >> RCV_SHIFT)
					& RCV_TID_CTRL_TID_BASE_INDEX_MASK)
				<< RCV_TID_CTRL_TID_BASE_INDEX_SHIFT);
		FUNC9(dd, ctxt, RCV_TID_CTRL, reg);
		if (ctxt == HFI1_CTRL_CTXT)
			FUNC8(dd, RCV_VL15, HFI1_CTRL_CTXT);
	}
	if (op & HFI1_RCVCTRL_CTXT_DIS) {
		FUNC8(dd, RCV_VL15, 0);
		/*
		 * When receive context is being disabled turn on tail
		 * update with a dummy tail address and then disable
		 * receive context.
		 */
		if (dd->rcvhdrtail_dummy_dma) {
			FUNC9(dd, ctxt, RCV_HDR_TAIL_ADDR,
					dd->rcvhdrtail_dummy_dma);
			/* Enabling RcvCtxtCtrl.TailUpd is intentional. */
			rcvctrl |= RCV_CTXT_CTRL_TAIL_UPD_SMASK;
		}

		rcvctrl &= ~RCV_CTXT_CTRL_ENABLE_SMASK;
	}
	if (op & HFI1_RCVCTRL_INTRAVAIL_ENB) {
		FUNC7(dd, IS_RCVAVAIL_START + rcd->ctxt,
			      IS_RCVAVAIL_START + rcd->ctxt, true);
		rcvctrl |= RCV_CTXT_CTRL_INTR_AVAIL_SMASK;
	}
	if (op & HFI1_RCVCTRL_INTRAVAIL_DIS) {
		FUNC7(dd, IS_RCVAVAIL_START + rcd->ctxt,
			      IS_RCVAVAIL_START + rcd->ctxt, false);
		rcvctrl &= ~RCV_CTXT_CTRL_INTR_AVAIL_SMASK;
	}
	if ((op & HFI1_RCVCTRL_TAILUPD_ENB) && rcd->rcvhdrtail_kvaddr)
		rcvctrl |= RCV_CTXT_CTRL_TAIL_UPD_SMASK;
	if (op & HFI1_RCVCTRL_TAILUPD_DIS) {
		/* See comment on RcvCtxtCtrl.TailUpd above */
		if (!(op & HFI1_RCVCTRL_CTXT_DIS))
			rcvctrl &= ~RCV_CTXT_CTRL_TAIL_UPD_SMASK;
	}
	if (op & HFI1_RCVCTRL_TIDFLOW_ENB)
		rcvctrl |= RCV_CTXT_CTRL_TID_FLOW_ENABLE_SMASK;
	if (op & HFI1_RCVCTRL_TIDFLOW_DIS)
		rcvctrl &= ~RCV_CTXT_CTRL_TID_FLOW_ENABLE_SMASK;
	if (op & HFI1_RCVCTRL_ONE_PKT_EGR_ENB) {
		/*
		 * In one-packet-per-eager mode, the size comes from
		 * the RcvArray entry.
		 */
		rcvctrl &= ~RCV_CTXT_CTRL_EGR_BUF_SIZE_SMASK;
		rcvctrl |= RCV_CTXT_CTRL_ONE_PACKET_PER_EGR_BUFFER_SMASK;
	}
	if (op & HFI1_RCVCTRL_ONE_PKT_EGR_DIS)
		rcvctrl &= ~RCV_CTXT_CTRL_ONE_PACKET_PER_EGR_BUFFER_SMASK;
	if (op & HFI1_RCVCTRL_NO_RHQ_DROP_ENB)
		rcvctrl |= RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK;
	if (op & HFI1_RCVCTRL_NO_RHQ_DROP_DIS)
		rcvctrl &= ~RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK;
	if (op & HFI1_RCVCTRL_NO_EGR_DROP_ENB)
		rcvctrl |= RCV_CTXT_CTRL_DONT_DROP_EGR_FULL_SMASK;
	if (op & HFI1_RCVCTRL_NO_EGR_DROP_DIS)
		rcvctrl &= ~RCV_CTXT_CTRL_DONT_DROP_EGR_FULL_SMASK;
	if (op & HFI1_RCVCTRL_URGENT_ENB)
		FUNC7(dd, IS_RCVURGENT_START + rcd->ctxt,
			      IS_RCVURGENT_START + rcd->ctxt, true);
	if (op & HFI1_RCVCTRL_URGENT_DIS)
		FUNC7(dd, IS_RCVURGENT_START + rcd->ctxt,
			      IS_RCVURGENT_START + rcd->ctxt, false);

	FUNC2(RCVCTRL, "ctxt %d rcvctrl 0x%llx\n", ctxt, rcvctrl);
	FUNC9(dd, ctxt, RCV_CTXT_CTRL, rcvctrl);

	/* work around sticky RcvCtxtStatus.BlockedRHQFull */
	if (did_enable &&
	    (rcvctrl & RCV_CTXT_CTRL_DONT_DROP_RHQ_FULL_SMASK)) {
		reg = FUNC5(dd, ctxt, RCV_CTXT_STATUS);
		if (reg != 0) {
			FUNC0(dd, "ctxt %d status %lld (blocked)\n",
				    ctxt, reg);
			FUNC6(dd, ctxt, RCV_HDR_HEAD);
			FUNC10(dd, ctxt, RCV_HDR_HEAD, 0x10);
			FUNC10(dd, ctxt, RCV_HDR_HEAD, 0x00);
			FUNC6(dd, ctxt, RCV_HDR_HEAD);
			reg = FUNC5(dd, ctxt, RCV_CTXT_STATUS);
			FUNC0(dd, "ctxt %d status %lld (%s blocked)\n",
				    ctxt, reg, reg == 0 ? "not" : "still");
		}
	}

	if (did_enable) {
		/*
		 * The interrupt timeout and count must be set after
		 * the context is enabled to take effect.
		 */
		/* set interrupt timeout */
		FUNC9(dd, ctxt, RCV_AVAIL_TIME_OUT,
				(u64)rcd->rcvavail_timeout <<
				RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT);

		/* set RcvHdrHead.Counter, zero RcvHdrHead.Head (again) */
		reg = (u64)rcv_intr_count << RCV_HDR_HEAD_COUNTER_SHIFT;
		FUNC10(dd, ctxt, RCV_HDR_HEAD, reg);
	}

	if (op & (HFI1_RCVCTRL_TAILUPD_DIS | HFI1_RCVCTRL_CTXT_DIS))
		/*
		 * If the context has been disabled and the Tail Update has
		 * been cleared, set the RCV_HDR_TAIL_ADDR CSR to dummy address
		 * so it doesn't contain an address that is invalid.
		 */
		FUNC9(dd, ctxt, RCV_HDR_TAIL_ADDR,
				dd->rcvhdrtail_dummy_dma);
}