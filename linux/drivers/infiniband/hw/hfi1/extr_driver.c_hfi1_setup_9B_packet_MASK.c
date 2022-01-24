#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_7__ {scalar_t__ next_hdr; int /*<<< orphan*/  version_tclass_flow; } ;
struct TYPE_5__ {TYPE_3__ grh; int /*<<< orphan*/  oth; } ;
struct TYPE_6__ {TYPE_1__ l; int /*<<< orphan*/  oth; } ;
struct ib_header {TYPE_2__ u; } ;
struct hfi1_packet {scalar_t__ dlid; int /*<<< orphan*/ * ohdr; int /*<<< orphan*/  migrated; int /*<<< orphan*/  pkey; scalar_t__ extra_byte; int /*<<< orphan*/  pad; int /*<<< orphan*/  rhf; int /*<<< orphan*/  sc; int /*<<< orphan*/  sl; int /*<<< orphan*/  slid; int /*<<< orphan*/  opcode; int /*<<< orphan*/  ebuf; int /*<<< orphan*/  payload; TYPE_3__* grh; struct ib_header* hdr; int /*<<< orphan*/  rcd; } ;
struct TYPE_8__ {int /*<<< orphan*/  n_pkt_drops; } ;
struct hfi1_ibport {TYPE_4__ rvp; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HFI1_LRH_BTH ; 
 scalar_t__ HFI1_LRH_GRH ; 
 scalar_t__ IB_GRH_NEXT_HDR ; 
 int IB_GRH_VERSION ; 
 int IB_GRH_VERSION_SHIFT ; 
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 int /*<<< orphan*/  IB_MULTICAST_LID_BASE ; 
 int /*<<< orphan*/  OPA_MCAST_NR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_packet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct ib_header*) ; 
 scalar_t__ FUNC9 (struct ib_header*) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_header*) ; 
 int /*<<< orphan*/  FUNC11 (struct ib_header*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct hfi1_ibport* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct hfi1_packet *packet)
{
	struct hfi1_ibport *ibp = FUNC13(packet->rcd);
	struct ib_header *hdr;
	u8 lnh;

	FUNC3(packet);
	hdr = packet->hdr;

	lnh = FUNC9(hdr);
	if (lnh == HFI1_LRH_BTH) {
		packet->ohdr = &hdr->u.oth;
		packet->grh = NULL;
	} else if (lnh == HFI1_LRH_GRH) {
		u32 vtf;

		packet->ohdr = &hdr->u.l.oth;
		packet->grh = &hdr->u.l.grh;
		if (packet->grh->next_hdr != IB_GRH_NEXT_HDR)
			goto drop;
		vtf = FUNC1(packet->grh->version_tclass_flow);
		if ((vtf >> IB_GRH_VERSION_SHIFT) != IB_GRH_VERSION)
			goto drop;
	} else {
		goto drop;
	}

	/* Query commonly used fields from packet header */
	packet->payload = packet->ebuf;
	packet->opcode = FUNC4(packet->ohdr);
	packet->slid = FUNC11(hdr);
	packet->dlid = FUNC8(hdr);
	if (FUNC14((packet->dlid >= FUNC0(IB_MULTICAST_LID_BASE)) &&
		     (packet->dlid != FUNC0(IB_LID_PERMISSIVE))))
		packet->dlid += FUNC12(OPA_MCAST_NR) -
				FUNC0(IB_MULTICAST_LID_BASE);
	packet->sl = FUNC10(hdr);
	packet->sc = FUNC2(hdr, packet->rhf);
	packet->pad = FUNC5(packet->ohdr);
	packet->extra_byte = 0;
	packet->pkey = FUNC6(packet->ohdr);
	packet->migrated = FUNC7(packet->ohdr);

	return 0;
drop:
	ibp->rvp.n_pkt_drops++;
	return -EINVAL;
}