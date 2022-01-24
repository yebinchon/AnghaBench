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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  atomic_orig; int /*<<< orphan*/  msn; } ;
struct TYPE_6__ {int /*<<< orphan*/  dest_qp_num; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct rxe_qp {TYPE_3__ resp; TYPE_2__ attr; int /*<<< orphan*/  pri_av; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int opcode; int mask; int paylen; int /*<<< orphan*/  psn; scalar_t__ offset; int /*<<< orphan*/  hdr; struct rxe_qp* qp; } ;
struct rxe_dev {int dummy; } ;
struct TYPE_8__ {int length; int mask; } ;

/* Variables and functions */
 int RXE_AETH_MASK ; 
 int RXE_ATMACK_MASK ; 
 scalar_t__ RXE_BTH_BYTES ; 
 int RXE_ICRC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct rxe_pkt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_pkt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_pkt_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct rxe_pkt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rxe_pkt_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct rxe_pkt_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rxe_pkt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rxe_pkt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rxe_pkt_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC12 (struct rxe_pkt_info*) ; 
 struct sk_buff* FUNC13 (struct rxe_dev*,int /*<<< orphan*/ *,int,struct rxe_pkt_info*) ; 
 TYPE_4__* rxe_opcode ; 
 int FUNC14 (struct rxe_pkt_info*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct rxe_dev* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *FUNC16(struct rxe_qp *qp,
					  struct rxe_pkt_info *pkt,
					  struct rxe_pkt_info *ack,
					  int opcode,
					  int payload,
					  u32 psn,
					  u8 syndrome,
					  u32 *crcp)
{
	struct rxe_dev *rxe = FUNC15(qp->ibqp.device);
	struct sk_buff *skb;
	u32 crc = 0;
	u32 *p;
	int paylen;
	int pad;
	int err;

	/*
	 * allocate packet
	 */
	pad = (-payload) & 0x3;
	paylen = rxe_opcode[opcode].length + payload + pad + RXE_ICRC_SIZE;

	skb = FUNC13(rxe, &qp->pri_av, paylen, ack);
	if (!skb)
		return NULL;

	ack->qp = qp;
	ack->opcode = opcode;
	ack->mask = rxe_opcode[opcode].mask;
	ack->offset = pkt->offset;
	ack->paylen = paylen;

	/* fill in bth using the request packet headers */
	FUNC11(ack->hdr, pkt->hdr, pkt->offset + RXE_BTH_BYTES);

	FUNC5(ack, opcode);
	FUNC8(ack, qp->attr.dest_qp_num);
	FUNC6(ack, pad);
	FUNC9(ack, 0);
	FUNC7(ack, psn);
	FUNC4(ack, 0);
	ack->psn = psn;

	if (ack->mask & RXE_AETH_MASK) {
		FUNC1(ack, syndrome);
		FUNC0(ack, qp->resp.msn);
	}

	if (ack->mask & RXE_ATMACK_MASK)
		FUNC2(ack, qp->resp.atomic_orig);

	err = FUNC14(ack, skb, &crc);
	if (err) {
		FUNC10(skb);
		return NULL;
	}

	if (crcp) {
		/* CRC computation will be continued by the caller */
		*crcp = crc;
	} else {
		p = FUNC12(ack) + payload + FUNC3(ack);
		*p = ~crc;
	}

	return skb;
}