#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct seq_file {int dummy; } ;
struct ps_mdata {int ps_head; } ;
struct TYPE_6__ {int /*<<< orphan*/ * bth; } ;
struct TYPE_4__ {TYPE_3__ oth; } ;
struct TYPE_5__ {TYPE_1__ l; TYPE_3__ oth; } ;
struct ib_header {TYPE_2__ u; int /*<<< orphan*/ * lrh; } ;
struct hfi1_packet {TYPE_3__* ohdr; struct ib_header* hdr; } ;
struct hfi1_ctxtdata {int rhf_offset; scalar_t__ rcvhdrq; int /*<<< orphan*/  ctxt; int /*<<< orphan*/  dd; int /*<<< orphan*/  flags; int /*<<< orphan*/  rcvhdrqentsize; int /*<<< orphan*/  rcvhdrq_cnt; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_RTAIL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int HFI1_LRH_BTH ; 
 int HFI1_LRH_GRH ; 
 int /*<<< orphan*/  RCV_HDR_HEAD ; 
 int RCV_HDR_HEAD_HEAD_MASK ; 
 int /*<<< orphan*/  RCV_HDR_TAIL ; 
 scalar_t__ RHF_RCV_TYPE_IB ; 
 int RVT_QPN_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ib_header* FUNC3 (struct hfi1_ctxtdata*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hfi1_ctxtdata*,struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ps_mdata*,struct hfi1_packet*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct ps_mdata*,int /*<<< orphan*/ ,struct hfi1_ctxtdata*) ; 
 scalar_t__ FUNC8 (struct ps_mdata*,int /*<<< orphan*/ ,struct hfi1_ctxtdata*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct seq_file*,char*,int,int,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC13 (struct ps_mdata*,struct hfi1_ctxtdata*) ; 

void FUNC14(struct seq_file *s, struct hfi1_ctxtdata *rcd)
{
	struct hfi1_packet packet;
	struct ps_mdata mdata;

	FUNC12(s, "Rcd %u: RcvHdr cnt %u entsize %u %s head %llu tail %llu\n",
		   rcd->ctxt, rcd->rcvhdrq_cnt, rcd->rcvhdrqentsize,
		   FUNC0(rcd->flags, DMA_RTAIL) ?
		   "dma_rtail" : "nodma_rtail",
		   FUNC9(rcd->dd, rcd->ctxt, RCV_HDR_HEAD) &
		   RCV_HDR_HEAD_HEAD_MASK,
		   FUNC9(rcd->dd, rcd->ctxt, RCV_HDR_TAIL));

	FUNC4(rcd, &packet);
	FUNC5(&mdata, &packet);

	while (1) {
		__le32 *rhf_addr = (__le32 *)rcd->rcvhdrq + mdata.ps_head +
					 rcd->rhf_offset;
		struct ib_header *hdr;
		u64 rhf = FUNC11(rhf_addr);
		u32 etype = FUNC10(rhf), qpn;
		u8 opcode;
		u32 psn;
		u8 lnh;

		if (FUNC7(&mdata, rhf, rcd))
			break;

		if (FUNC8(&mdata, rhf, rcd))
			goto next;

		if (etype > RHF_RCV_TYPE_IB)
			goto next;

		packet.hdr = FUNC3(rcd, rhf_addr);
		hdr = packet.hdr;

		lnh = FUNC1(hdr->lrh[0]) & 3;

		if (lnh == HFI1_LRH_BTH)
			packet.ohdr = &hdr->u.oth;
		else if (lnh == HFI1_LRH_GRH)
			packet.ohdr = &hdr->u.l.oth;
		else
			goto next; /* just in case */

		opcode = (FUNC2(packet.ohdr->bth[0]) >> 24);
		qpn = FUNC2(packet.ohdr->bth[1]) & RVT_QPN_MASK;
		psn = FUNC6(FUNC2(packet.ohdr->bth[2]));

		FUNC12(s, "\tEnt %u: opcode 0x%x, qpn 0x%x, psn 0x%x\n",
			   mdata.ps_head, opcode, qpn, psn);
next:
		FUNC13(&mdata, rcd);
	}
}