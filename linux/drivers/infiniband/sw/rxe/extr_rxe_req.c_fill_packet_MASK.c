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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {size_t sge_offset; int resid; int /*<<< orphan*/ * inline_data; } ;
struct TYPE_5__ {int send_flags; } ;
struct rxe_send_wqe {TYPE_3__ dma; TYPE_2__ wr; } ;
struct TYPE_4__ {int /*<<< orphan*/  device; } ;
struct rxe_qp {int /*<<< orphan*/  pd; TYPE_1__ ibqp; } ;
struct rxe_pkt_info {int mask; } ;
struct rxe_dev {int dummy; } ;

/* Variables and functions */
 int IB_SEND_INLINE ; 
 int RXE_WRITE_OR_SEND ; 
 int FUNC0 (struct rxe_pkt_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  from_mem_obj ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct rxe_pkt_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct rxe_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct rxe_pkt_info*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct rxe_dev* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct rxe_qp *qp, struct rxe_send_wqe *wqe,
		       struct rxe_pkt_info *pkt, struct sk_buff *skb,
		       int paylen)
{
	struct rxe_dev *rxe = FUNC6(qp->ibqp.device);
	u32 crc = 0;
	u32 *p;
	int err;

	err = FUNC5(pkt, skb, &crc);
	if (err)
		return err;

	if (pkt->mask & RXE_WRITE_OR_SEND) {
		if (wqe->wr.send_flags & IB_SEND_INLINE) {
			u8 *tmp = &wqe->dma.inline_data[wqe->dma.sge_offset];

			crc = FUNC4(rxe, crc, tmp, paylen);
			FUNC2(FUNC3(pkt), tmp, paylen);

			wqe->dma.resid -= paylen;
			wqe->dma.sge_offset += paylen;
		} else {
			err = FUNC1(qp->pd, 0, &wqe->dma,
					FUNC3(pkt), paylen,
					from_mem_obj,
					&crc);
			if (err)
				return err;
		}
	}
	p = FUNC3(pkt) + paylen + FUNC0(pkt);

	*p = ~crc;

	return 0;
}