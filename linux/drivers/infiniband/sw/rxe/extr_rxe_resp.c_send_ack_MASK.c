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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct rxe_qp {int dummy; } ;
struct rxe_pkt_info {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IB_OPCODE_RC_ACKNOWLEDGE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct sk_buff* FUNC1 (struct rxe_qp*,struct rxe_pkt_info*,struct rxe_pkt_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rxe_qp*,struct rxe_pkt_info*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC3(struct rxe_qp *qp, struct rxe_pkt_info *pkt,
		    u8 syndrome, u32 psn)
{
	int err = 0;
	struct rxe_pkt_info ack_pkt;
	struct sk_buff *skb;

	skb = FUNC1(qp, pkt, &ack_pkt, IB_OPCODE_RC_ACKNOWLEDGE,
				 0, psn, syndrome, NULL);
	if (!skb) {
		err = -ENOMEM;
		goto err1;
	}

	err = FUNC2(qp, &ack_pkt, skb);
	if (err)
		FUNC0("Failed sending ack\n");

err1:
	return err;
}