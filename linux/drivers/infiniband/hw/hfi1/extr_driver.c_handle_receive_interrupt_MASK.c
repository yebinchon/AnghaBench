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
typedef  scalar_t__ u32 ;
struct hfi1_packet {scalar_t__ rhqoff; scalar_t__ rsize; int /*<<< orphan*/  rhf; int /*<<< orphan*/ * rhf_addr; } ;
struct hfi1_devdata {scalar_t__ do_drop; int /*<<< orphan*/  drop_packet; } ;
struct hfi1_ctxtdata {scalar_t__ seq_cnt; int rhf_offset; scalar_t__ head; int /*<<< orphan*/  ctxt; int /*<<< orphan*/  flags; TYPE_1__* ppd; scalar_t__ rcvhdrq; struct hfi1_devdata* dd; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {scalar_t__ host_link_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RTAIL ; 
 int /*<<< orphan*/  DROP_PACKET_OFF ; 
 scalar_t__ DROP_PACKET_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HFI1_CTRL_CTXT ; 
 scalar_t__ HLS_UP_ARMED ; 
 int RCV_PKT_DONE ; 
 int RCV_PKT_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_packet*) ; 
 scalar_t__ FUNC4 (struct hfi1_ctxtdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_ctxtdata*,struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC6 (struct hfi1_ctxtdata*,struct hfi1_packet*) ; 
 int FUNC7 (struct hfi1_packet*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct hfi1_packet*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (struct hfi1_ctxtdata*,struct hfi1_packet*,struct hfi1_devdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct hfi1_devdata*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hfi1_packet*,int) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int) ; 

int FUNC18(struct hfi1_ctxtdata *rcd, int thread)
{
	struct hfi1_devdata *dd = rcd->dd;
	u32 hdrqtail;
	int needset, last = RCV_PKT_OK;
	struct hfi1_packet packet;
	int skip_pkt = 0;

	/* Control context will always use the slow path interrupt handler */
	needset = (rcd->ctxt == HFI1_CTRL_CTXT) ? 0 : 1;

	FUNC5(rcd, &packet);

	if (!FUNC0(rcd->flags, DMA_RTAIL)) {
		u32 seq = FUNC10(packet.rhf);

		if (seq != rcd->seq_cnt) {
			last = RCV_PKT_DONE;
			goto bail;
		}
		hdrqtail = 0;
	} else {
		hdrqtail = FUNC4(rcd);
		if (packet.rhqoff == hdrqtail) {
			last = RCV_PKT_DONE;
			goto bail;
		}
		FUNC16();  /* prevent speculative reads of dma'ed hdrq */

		/*
		 * Control context can potentially receive an invalid
		 * rhf. Drop such packets.
		 */
		if (rcd->ctxt == HFI1_CTRL_CTXT) {
			u32 seq = FUNC10(packet.rhf);

			if (seq != rcd->seq_cnt)
				skip_pkt = 1;
		}
	}

	FUNC6(rcd, &packet);

	while (last == RCV_PKT_OK) {
		if (FUNC17(dd->do_drop &&
			     FUNC1(&dd->drop_packet, DROP_PACKET_OFF) ==
			     DROP_PACKET_ON)) {
			dd->do_drop = 0;

			/* On to the next packet */
			packet.rhqoff += packet.rsize;
			packet.rhf_addr = (__le32 *)rcd->rcvhdrq +
					  packet.rhqoff +
					  rcd->rhf_offset;
			packet.rhf = FUNC11(packet.rhf_addr);

		} else if (skip_pkt) {
			last = FUNC15(&packet, thread);
			skip_pkt = 0;
		} else {
			/* Auto activate link on non-SC15 packet receive */
			if (FUNC17(rcd->ppd->host_link_state ==
				     HLS_UP_ARMED) &&
			    FUNC12(rcd, &packet, dd))
				goto bail;
			last = FUNC7(&packet, thread);
		}

		if (!FUNC0(rcd->flags, DMA_RTAIL)) {
			u32 seq = FUNC10(packet.rhf);

			if (++rcd->seq_cnt > 13)
				rcd->seq_cnt = 1;
			if (seq != rcd->seq_cnt)
				last = RCV_PKT_DONE;
			if (needset) {
				FUNC2(dd, "Switching to NO_DMA_RTAIL\n");
				FUNC14(dd, rcd->ctxt);
				needset = 0;
			}
		} else {
			if (packet.rhqoff == hdrqtail)
				last = RCV_PKT_DONE;
			/*
			 * Control context can potentially receive an invalid
			 * rhf. Drop such packets.
			 */
			if (rcd->ctxt == HFI1_CTRL_CTXT) {
				u32 seq = FUNC10(packet.rhf);

				if (++rcd->seq_cnt > 13)
					rcd->seq_cnt = 1;
				if (!last && (seq != rcd->seq_cnt))
					skip_pkt = 1;
			}

			if (needset) {
				FUNC2(dd,
					    "Switching to DMA_RTAIL\n");
				FUNC13(dd, rcd->ctxt);
				needset = 0;
			}
		}

		FUNC9(last, &packet);
	}

	FUNC8(&packet);
	rcd->head = packet.rhqoff;

bail:
	/*
	 * Always write head at end, and setup rcv interrupt, even
	 * if no packets were processed.
	 */
	FUNC3(&packet);
	return last;
}